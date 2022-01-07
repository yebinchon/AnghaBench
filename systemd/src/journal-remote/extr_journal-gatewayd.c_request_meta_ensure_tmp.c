
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tmp; } ;
typedef TYPE_1__ RequestMeta ;


 int O_CLOEXEC ;
 int O_RDWR ;
 int assert (TYPE_1__*) ;
 int errno ;
 scalar_t__ fdopen (int,char*) ;
 int open_tmpfile_unlinkable (char*,int) ;
 int rewind (scalar_t__) ;
 int safe_close (int) ;

__attribute__((used)) static int request_meta_ensure_tmp(RequestMeta *m) {
        assert(m);

        if (m->tmp)
                rewind(m->tmp);
        else {
                int fd;

                fd = open_tmpfile_unlinkable("/tmp", O_RDWR|O_CLOEXEC);
                if (fd < 0)
                        return fd;

                m->tmp = fdopen(fd, "w+");
                if (!m->tmp) {
                        safe_close(fd);
                        return -errno;
                }
        }

        return 0;
}
