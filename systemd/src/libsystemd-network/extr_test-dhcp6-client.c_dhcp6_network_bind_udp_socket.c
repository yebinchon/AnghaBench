
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int AF_UNIX ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int assert_se (int) ;
 int errno ;
 scalar_t__ socketpair (int ,int,int ,int*) ;
 int* test_dhcp_fd ;
 int test_index ;

int dhcp6_network_bind_udp_socket(int index, struct in6_addr *local_address) {
        assert_se(index == test_index);

        if (socketpair(AF_UNIX, SOCK_STREAM | SOCK_CLOEXEC | SOCK_NONBLOCK, 0, test_dhcp_fd) < 0)
                return -errno;

        return test_dhcp_fd[0];
}
