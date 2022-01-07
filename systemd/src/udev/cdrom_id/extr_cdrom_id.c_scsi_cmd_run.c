
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u; } ;
struct TYPE_4__ {unsigned char* dxferp; size_t dxfer_len; int info; int masked_status; int dxfer_direction; } ;
struct scsi_cmd {TYPE_1__ _sense; TYPE_2__ sg_io; } ;


 int CHECK_CONDITION ;
 int EIO ;
 int ERRCODE (int ) ;
 int SG_DXFER_FROM_DEV ;
 int SG_DXFER_NONE ;
 int SG_INFO_OK ;
 int SG_INFO_OK_MASK ;
 int SG_IO ;
 int errno ;
 scalar_t__ ioctl (int,int ,TYPE_2__*) ;

__attribute__((used)) static int scsi_cmd_run(struct scsi_cmd *cmd, int fd, unsigned char *buf, size_t bufsize) {
        int ret = 0;

        if (bufsize > 0) {
                cmd->sg_io.dxferp = buf;
                cmd->sg_io.dxfer_len = bufsize;
                cmd->sg_io.dxfer_direction = SG_DXFER_FROM_DEV;
        } else
                cmd->sg_io.dxfer_direction = SG_DXFER_NONE;

        if (ioctl(fd, SG_IO, &cmd->sg_io))
                return -1;

        if ((cmd->sg_io.info & SG_INFO_OK_MASK) != SG_INFO_OK) {
                errno = EIO;
                ret = -1;
                if (cmd->sg_io.masked_status & CHECK_CONDITION) {
                        ret = ERRCODE(cmd->_sense.u);
                        if (ret == 0)
                                ret = -1;
                }
        }
        return ret;
}
