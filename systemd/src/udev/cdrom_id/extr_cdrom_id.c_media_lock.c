
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDO_LOCK ;
 int CDROM_CLEAR_OPTIONS ;
 int CDROM_LOCKDOOR ;
 int ioctl (int,int ,int) ;
 int log_debug (char*) ;

__attribute__((used)) static int media_lock(int fd, bool lock) {
        int err;


        err = ioctl(fd, CDROM_CLEAR_OPTIONS, CDO_LOCK);
        if (err < 0)
                log_debug("CDROM_CLEAR_OPTIONS, CDO_LOCK failed");

        err = ioctl(fd, CDROM_LOCKDOOR, lock ? 1 : 0);
        if (err < 0)
                log_debug("CDROM_LOCKDOOR failed");

        return err;
}
