
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* cmd; } ;
struct TYPE_3__ {size_t cmd_len; } ;
struct scsi_cmd {TYPE_2__ cgc; TYPE_1__ sg_io; } ;



__attribute__((used)) static void scsi_cmd_set(struct scsi_cmd *cmd, size_t i, unsigned char arg) {
        cmd->sg_io.cmd_len = i + 1;
        cmd->cgc.cmd[i] = arg;
}
