
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int public_key; int ip_port; } ;
struct TYPE_9__ {unsigned int connections_length; int onion_num_conns; } ;
struct TYPE_8__ {scalar_t__ status; scalar_t__ lock_count; scalar_t__ sleep_count; scalar_t__ unsleep; scalar_t__ connected_time; scalar_t__ onion; TYPE_4__* connection; int relay_pk; int ip_port; } ;
typedef TYPE_1__ TCP_con ;
typedef TYPE_2__ TCP_Connections ;
typedef int TCP_Connection_to ;


 int TCP_CONNECTIONS_STATUS_NONE ;
 scalar_t__ TCP_CONN_CONNECTED ;
 scalar_t__ TCP_CONN_SLEEPING ;
 int crypto_box_PUBLICKEYBYTES ;
 int * get_connection (TYPE_2__*,unsigned int) ;
 TYPE_1__* get_tcp_connection (TYPE_2__*,int) ;
 int kill_TCP_connection (TYPE_4__*) ;
 int memcpy (int ,int ,int ) ;
 int set_tcp_connection_status (int *,int,int ,int ) ;

__attribute__((used)) static int sleep_tcp_relay_connection(TCP_Connections *tcp_c, int tcp_connections_number)
{
    TCP_con *tcp_con = get_tcp_connection(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    if (tcp_con->status != TCP_CONN_CONNECTED)
        return -1;

    if (tcp_con->lock_count != tcp_con->sleep_count)
        return -1;

    tcp_con->ip_port = tcp_con->connection->ip_port;
    memcpy(tcp_con->relay_pk, tcp_con->connection->public_key, crypto_box_PUBLICKEYBYTES);

    kill_TCP_connection(tcp_con->connection);
    tcp_con->connection = ((void*)0);

    unsigned int i;

    for (i = 0; i < tcp_c->connections_length; ++i) {
        TCP_Connection_to *con_to = get_connection(tcp_c, i);

        if (con_to) {
            set_tcp_connection_status(con_to, tcp_connections_number, TCP_CONNECTIONS_STATUS_NONE, 0);
        }
    }

    if (tcp_con->onion) {
        --tcp_c->onion_num_conns;
        tcp_con->onion = 0;
    }

    tcp_con->lock_count = 0;
    tcp_con->sleep_count = 0;
    tcp_con->connected_time = 0;
    tcp_con->status = TCP_CONN_SLEEPING;
    tcp_con->unsleep = 0;

    return 0;
}
