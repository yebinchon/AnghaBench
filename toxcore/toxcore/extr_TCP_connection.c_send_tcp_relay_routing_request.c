
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ status; int connection; } ;
typedef TYPE_1__ TCP_con ;
typedef int TCP_Connections ;


 scalar_t__ TCP_CONN_SLEEPING ;
 TYPE_1__* get_tcp_connection (int *,int) ;
 int send_routing_request (int ,int *) ;

__attribute__((used)) static int send_tcp_relay_routing_request(TCP_Connections *tcp_c, int tcp_connections_number, uint8_t *public_key)
{
    TCP_con *tcp_con = get_tcp_connection(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    if (tcp_con->status == TCP_CONN_SLEEPING)
        return -1;

    if (send_routing_request(tcp_con->connection, public_key) != 1)
        return -1;

    return 0;
}
