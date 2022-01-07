
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sockaddr_union {int dummy; } sockaddr_union ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int AF_UNIX ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int errno ;
 scalar_t__ socketpair (int ,int,int ,int*) ;
 int* test_fd ;

int dhcp_network_bind_raw_socket(
                int index,
                union sockaddr_union *link,
                uint32_t id,
                const uint8_t *addr, size_t addr_len,
                uint16_t arp_type, uint16_t port) {

        if (socketpair(AF_UNIX, SOCK_STREAM | SOCK_CLOEXEC | SOCK_NONBLOCK, 0, test_fd) < 0)
                return -errno;

        return test_fd[0];
}
