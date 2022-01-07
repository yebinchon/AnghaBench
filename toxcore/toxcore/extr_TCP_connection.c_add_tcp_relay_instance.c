
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ family; } ;
struct TYPE_12__ {TYPE_1__ ip; } ;
struct TYPE_11__ {int proxy_info; int self_secret_key; int self_public_key; TYPE_2__* tcp_connections; } ;
struct TYPE_10__ {int status; int connection; } ;
typedef TYPE_2__ TCP_con ;
typedef TYPE_3__ TCP_Connections ;
typedef TYPE_4__ IP_Port ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int TCP_CONN_VALID ;
 scalar_t__ TCP_INET ;
 scalar_t__ TCP_INET6 ;
 int create_tcp_connection (TYPE_3__*) ;
 int new_TCP_connection (TYPE_4__,int const*,int ,int ,int *) ;

__attribute__((used)) static int add_tcp_relay_instance(TCP_Connections *tcp_c, IP_Port ip_port, const uint8_t *relay_pk)
{
    if (ip_port.ip.family == TCP_INET) {
        ip_port.ip.family = AF_INET;
    } else if (ip_port.ip.family == TCP_INET6) {
        ip_port.ip.family = AF_INET6;
    }

    if (ip_port.ip.family != AF_INET && ip_port.ip.family != AF_INET6)
        return -1;

    int tcp_connections_number = create_tcp_connection(tcp_c);

    if (tcp_connections_number == -1)
        return -1;

    TCP_con *tcp_con = &tcp_c->tcp_connections[tcp_connections_number];


    tcp_con->connection = new_TCP_connection(ip_port, relay_pk, tcp_c->self_public_key, tcp_c->self_secret_key,
                          &tcp_c->proxy_info);

    if (!tcp_con->connection)
        return -1;

    tcp_con->status = TCP_CONN_VALID;

    return tcp_connections_number;
}
