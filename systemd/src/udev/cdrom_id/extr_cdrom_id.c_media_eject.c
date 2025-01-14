
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmd {int dummy; } ;


 int info_scsi_cmd_err (char*,int) ;
 int scsi_cmd_init (struct scsi_cmd*) ;
 int scsi_cmd_run (struct scsi_cmd*,int,int *,int ) ;
 int scsi_cmd_set (struct scsi_cmd*,int,int) ;

__attribute__((used)) static int media_eject(int fd) {
        struct scsi_cmd sc;
        int err;

        scsi_cmd_init(&sc);
        scsi_cmd_set(&sc, 0, 0x1b);
        scsi_cmd_set(&sc, 4, 0x02);
        scsi_cmd_set(&sc, 5, 0);
        err = scsi_cmd_run(&sc, fd, ((void*)0), 0);
        if (err != 0) {
                info_scsi_cmd_err("START_STOP_UNIT", err);
                return -1;
        }
        return 0;
}
