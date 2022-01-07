
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int errno ;
 scalar_t__ socketpair (int ,int,int ,int*) ;
 int* test_fd ;

int lldp_network_bind_raw_socket(int ifindex) {
        if (socketpair(AF_UNIX, SOCK_STREAM | SOCK_CLOEXEC | SOCK_NONBLOCK, 0, test_fd) < 0)
                return -errno;

        return test_fd[0];
}
