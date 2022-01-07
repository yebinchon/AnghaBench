
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int O_CLOEXEC ;
 int O_CREAT ;
 int O_DIRECTORY ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int assert (int) ;
 int * fdopendir (int) ;
 int openat (int,char const*,int,int ) ;
 int safe_close (int) ;

DIR *xopendirat(int fd, const char *name, int flags) {
        int nfd;
        DIR *d;

        assert(!(flags & O_CREAT));

        nfd = openat(fd, name, O_RDONLY|O_NONBLOCK|O_DIRECTORY|O_CLOEXEC|flags, 0);
        if (nfd < 0)
                return ((void*)0);

        d = fdopendir(nfd);
        if (!d) {
                safe_close(nfd);
                return ((void*)0);
        }

        return d;
}
