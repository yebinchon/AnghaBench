
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 int EVIOCREVOKE ;
 int assert (int) ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,int *) ;
 int log_warning_errno (scalar_t__,char*) ;

__attribute__((used)) static void sd_eviocrevoke(int fd) {
        static bool warned = 0;

        assert(fd >= 0);

        if (ioctl(fd, EVIOCREVOKE, ((void*)0)) < 0) {

                if (errno == EINVAL && !warned) {
                        log_warning_errno(errno, "Kernel does not support evdev-revocation: %m");
                        warned = 1;
                }
        }
}
