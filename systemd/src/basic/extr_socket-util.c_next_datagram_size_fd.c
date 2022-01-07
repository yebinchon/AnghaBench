
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int EFAULT ;
 int EOPNOTSUPP ;
 int FIONREAD ;
 scalar_t__ IN_SET (scalar_t__,int ,int ) ;
 int MSG_PEEK ;
 int MSG_TRUNC ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,int*) ;
 scalar_t__ recv (int,int *,int ,int) ;

ssize_t next_datagram_size_fd(int fd) {
        ssize_t l;
        int k;







        l = recv(fd, ((void*)0), 0, MSG_PEEK|MSG_TRUNC);
        if (l < 0) {
                if (IN_SET(errno, EOPNOTSUPP, EFAULT))
                        goto fallback;

                return -errno;
        }
        if (l == 0)
                goto fallback;

        return l;

fallback:
        k = 0;




        if (ioctl(fd, FIONREAD, &k) < 0)
                return -errno;

        return (ssize_t) k;
}
