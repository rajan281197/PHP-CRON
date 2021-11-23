<?php
try {
    $db_name     = 'cron_jobs';
    $db_user     = 'root';
    $db_password = 'Creole@123';
    $db_host     = 'localhost';

    $pdo = new PDO('mysql:host=' . $db_host . '; dbname=' . $db_name, $db_user, $db_password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

    $loop_expiry_time = time() + 60;

    while (time() < $loop_expiry_time) {
        $data = [];
        $sql  = "select
                 task_id
                 from tasks
                 where is_processed = :is_processed
                 ";

        $data['is_processed'] = 'N';

        $stmt = $pdo->prepare($sql);
        $stmt->execute($data);

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $data_update   = [];
            $sql_update    = "update tasks set
                              is_processed  = :is_processed,
                              completed_at  = :completed_at
                              where task_id = :task_id
                              ";

            $data_update   = [
                             'is_processed' => 'Y',
                             'completed_at' => date("Y-m-d H:i:s"),
                             'task_id'      => $row['task_id']
                             ];
            $stmt = $pdo->prepare($sql_update);
            $stmt->execute($data_update);
        }

        sleep(5);

        }

} catch (PDOException $ex) {
    echo $ex->getMessage();
}
