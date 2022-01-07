
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int EINVAL ;
 int ENOTTY ;
 scalar_t__ IN_SET (int,int ,int ) ;
 int TTY_MODE ;
 int assert (int) ;
 int errno ;
 int fchmod_and_chown (int,int ,int ,int) ;
 int isatty (int) ;

__attribute__((used)) static int chown_terminal(int fd, uid_t uid) {
        int r;

        assert(fd >= 0);


        if (isatty(fd) < 1) {
                if (IN_SET(errno, EINVAL, ENOTTY))
                        return 0;

                return -errno;
        }


        r = fchmod_and_chown(fd, TTY_MODE, uid, -1);
        if (r < 0)
                return r;

        return 1;
}
