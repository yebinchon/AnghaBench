
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char interface_id; int mx_sb_len; int flags; int sbp; int cmdp; } ;
struct TYPE_4__ {int u; int s; } ;
struct TYPE_6__ {int quiet; int cmd; int * sense; } ;
struct scsi_cmd {TYPE_2__ sg_io; TYPE_1__ _sense; TYPE_3__ cgc; } ;


 int SG_FLAG_DIRECT_IO ;
 int SG_FLAG_LUN_INHIBIT ;
 int memzero (struct scsi_cmd*,int) ;

__attribute__((used)) static void scsi_cmd_init(struct scsi_cmd *cmd) {
        memzero(cmd, sizeof(struct scsi_cmd));
        cmd->cgc.quiet = 1;
        cmd->cgc.sense = &cmd->_sense.s;
        cmd->sg_io.interface_id = 'S';
        cmd->sg_io.mx_sb_len = sizeof(cmd->_sense);
        cmd->sg_io.cmdp = cmd->cgc.cmd;
        cmd->sg_io.sbp = cmd->_sense.u;
        cmd->sg_io.flags = SG_FLAG_LUN_INHIBIT | SG_FLAG_DIRECT_IO;
}
