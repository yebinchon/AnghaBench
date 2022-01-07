
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sockaddr_union {int dummy; } sockaddr_union ;
typedef union in_addr_union {int dummy; } in_addr_union ;
typedef int uint16_t ;
typedef int DnsServer ;
typedef int DnsScope ;


 int SOCK_STREAM ;
 int dns_scope_socket (int *,int ,int,union in_addr_union const*,int *,int ,union sockaddr_union*) ;

int dns_scope_socket_tcp(DnsScope *s, int family, const union in_addr_union *address, DnsServer *server, uint16_t port, union sockaddr_union *ret_socket_address) {




        return dns_scope_socket(s, SOCK_STREAM, family, address, server, port, ret_socket_address);
}
