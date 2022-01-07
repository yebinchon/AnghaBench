
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Socket ;


 int EAGAIN ;
 scalar_t__ ERRNO_IS_ACCEPT_AGAIN (int) ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int accept4 (int,int *,int *,int) ;
 int assert (int) ;
 int errno ;

__attribute__((used)) static int socket_accept_do(Socket *s, int fd) {
        int cfd;

        assert(s);
        assert(fd >= 0);

        cfd = accept4(fd, ((void*)0), ((void*)0), SOCK_NONBLOCK|SOCK_CLOEXEC);
        if (cfd < 0)

                return ERRNO_IS_ACCEPT_AGAIN(errno) ? -EAGAIN : -errno;

        return cfd;
}
