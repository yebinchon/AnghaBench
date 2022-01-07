
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int DnsServer ;
typedef int DnsScope ;


 int AF_UNSPEC ;
 int SOCK_DGRAM ;
 int dns_scope_socket (int *,int ,int ,int *,int *,int ,int *) ;

int dns_scope_socket_udp(DnsScope *s, DnsServer *server, uint16_t port) {
        return dns_scope_socket(s, SOCK_DGRAM, AF_UNSPEC, ((void*)0), server, port, ((void*)0));
}
