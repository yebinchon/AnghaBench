
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;
typedef int FILE ;


 int assert (int **) ;
 int errno ;
 int * fdopen (int,char*) ;
 int open_serialization_fd (char*) ;
 int safe_close (int) ;

int manager_open_serialization(Manager *m, FILE **_f) {
        int fd;
        FILE *f;

        assert(_f);

        fd = open_serialization_fd("systemd-state");
        if (fd < 0)
                return fd;

        f = fdopen(fd, "w+");
        if (!f) {
                safe_close(fd);
                return -errno;
        }

        *_f = f;
        return 0;
}
