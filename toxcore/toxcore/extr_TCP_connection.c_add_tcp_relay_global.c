
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int TCP_Connections ;
typedef int IP_Port ;


 int add_tcp_relay_instance (int *,int ,int const*) ;
 int find_tcp_connection_relay (int *,int const*) ;

int add_tcp_relay_global(TCP_Connections *tcp_c, IP_Port ip_port, const uint8_t *relay_pk)
{
    int tcp_connections_number = find_tcp_connection_relay(tcp_c, relay_pk);

    if (tcp_connections_number != -1)
        return -1;

    if (add_tcp_relay_instance(tcp_c, ip_port, relay_pk) == -1)
        return -1;

    return 0;
}
