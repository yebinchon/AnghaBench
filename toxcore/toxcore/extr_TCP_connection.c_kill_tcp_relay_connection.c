
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned int connections_length; int onion_num_conns; } ;
struct TYPE_8__ {int connection; scalar_t__ onion; } ;
typedef TYPE_1__ TCP_con ;
typedef TYPE_2__ TCP_Connections ;
typedef int TCP_Connection_to ;


 int * get_connection (TYPE_2__*,unsigned int) ;
 TYPE_1__* get_tcp_connection (TYPE_2__*,int) ;
 int kill_TCP_connection (int ) ;
 int rm_tcp_connection_from_conn (int *,int) ;
 int wipe_tcp_connection (TYPE_2__*,int) ;

__attribute__((used)) static int kill_tcp_relay_connection(TCP_Connections *tcp_c, int tcp_connections_number)
{
    TCP_con *tcp_con = get_tcp_connection(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    unsigned int i;

    for (i = 0; i < tcp_c->connections_length; ++i) {
        TCP_Connection_to *con_to = get_connection(tcp_c, i);

        if (con_to) {
            rm_tcp_connection_from_conn(con_to, tcp_connections_number);
        }
    }

    if (tcp_con->onion) {
        --tcp_c->onion_num_conns;
    }

    kill_TCP_connection(tcp_con->connection);

    return wipe_tcp_connection(tcp_c, tcp_connections_number);
}
