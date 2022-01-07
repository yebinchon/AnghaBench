
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDROM_DRIVE_STATUS ;
 int CDSL_CURRENT ;
 scalar_t__ CDS_DISC_OK ;
 int cd_media ;
 int errno ;
 scalar_t__ ioctl (int,int ,int ) ;
 int log_debug_errno (int ,char*) ;

__attribute__((used)) static int cd_media_compat(int fd) {
        if (ioctl(fd, CDROM_DRIVE_STATUS, CDSL_CURRENT) != CDS_DISC_OK)
                return log_debug_errno(errno, "CDROM_DRIVE_STATUS != CDS_DISC_OK");

        cd_media = 1;
        return 0;
}
