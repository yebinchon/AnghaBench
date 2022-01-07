
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int assert_se (int) ;
 scalar_t__ socketpair (int ,int,int ,int*) ;
 int* test_fd ;

int icmp6_bind_router_solicitation(int index) {
        assert_se(socketpair(AF_UNIX, SOCK_STREAM | SOCK_CLOEXEC | SOCK_NONBLOCK, 0, test_fd) >= 0);
        return test_fd[0];
}
