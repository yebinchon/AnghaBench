
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int SOCK_NONBLOCK ;
 int assert_se (int) ;
 int errno ;
 scalar_t__ socketpair (int ,int,int ,int*) ;
 int* test_fd ;

int icmp6_bind_router_solicitation(int index) {
        assert_se(index == 42);

        if (socketpair(AF_UNIX, SOCK_DGRAM | SOCK_CLOEXEC | SOCK_NONBLOCK, 0, test_fd) < 0)
                return -errno;

        return test_fd[0];
}
