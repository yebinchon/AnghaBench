
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int assert (int) ;
 scalar_t__ receive_one_fd_iov (int,int *,int ,int,int*) ;

int receive_one_fd(int transport_fd, int flags) {
        int fd;
        ssize_t k;

        k = receive_one_fd_iov(transport_fd, ((void*)0), 0, flags, &fd);
        if (k == 0)
                return fd;



        assert(k < 0);
        return (int) k;
}
