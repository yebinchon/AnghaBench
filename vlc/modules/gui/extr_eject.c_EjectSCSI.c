
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ALLOW_MEDIUM_REMOVAL ;
 int BLKRRPART ;
 int SCSI_IOCTL_SEND_COMMAND ;
 void* START_STOP ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ ioctl (int,int ,...) ;

__attribute__((used)) static int EjectSCSI( int i_fd )
{
    struct sdata
    {
        int inlen;
        int outlen;
        char cmd[256];
    } scsi_cmd;

    scsi_cmd.inlen = 0;
    scsi_cmd.outlen = 0;
    scsi_cmd.cmd[0] = ALLOW_MEDIUM_REMOVAL;
    scsi_cmd.cmd[1] = 0;
    scsi_cmd.cmd[2] = 0;
    scsi_cmd.cmd[3] = 0;
    scsi_cmd.cmd[4] = 0;
    scsi_cmd.cmd[5] = 0;
    if( ioctl( i_fd, SCSI_IOCTL_SEND_COMMAND, (void *)&scsi_cmd ) < 0 )
        return VLC_EGENERIC;

    scsi_cmd.inlen = 0;
    scsi_cmd.outlen = 0;
    scsi_cmd.cmd[0] = START_STOP;
    scsi_cmd.cmd[1] = 0;
    scsi_cmd.cmd[2] = 0;
    scsi_cmd.cmd[3] = 0;
    scsi_cmd.cmd[4] = 1;
    scsi_cmd.cmd[5] = 0;
    if( ioctl( i_fd, SCSI_IOCTL_SEND_COMMAND, (void *)&scsi_cmd ) < 0 )
        return VLC_EGENERIC;

    scsi_cmd.inlen = 0;
    scsi_cmd.outlen = 0;
    scsi_cmd.cmd[0] = START_STOP;
    scsi_cmd.cmd[1] = 0;
    scsi_cmd.cmd[2] = 0;
    scsi_cmd.cmd[3] = 0;
    scsi_cmd.cmd[4] = 2;
    scsi_cmd.cmd[5] = 0;
    if( ioctl( i_fd, SCSI_IOCTL_SEND_COMMAND, (void *)&scsi_cmd ) < 0 )
        return VLC_EGENERIC;


    ioctl( i_fd, BLKRRPART );
    return VLC_SUCCESS;
}
