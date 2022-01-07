
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;
typedef int be32_t ;


 int AF_UNIX ;
 int SOCK_CLOEXEC ;
 int SOCK_DGRAM ;
 int SOCK_NONBLOCK ;
 int errno ;
 scalar_t__ socketpair (int ,int,int ,int*) ;
 int* test_fd ;

int arp_network_bind_raw_socket(int index, be32_t address, const struct ether_addr *eth_mac) {
        if (socketpair(AF_UNIX, SOCK_DGRAM | SOCK_CLOEXEC | SOCK_NONBLOCK, 0, test_fd) < 0)
                return -errno;

        return test_fd[0];
}
