
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int public_key; int ip_port; } ;
struct TYPE_11__ {unsigned int connections_length; int onion_num_conns; int proxy_info; int self_secret_key; int self_public_key; } ;
struct TYPE_10__ {scalar_t__ status; scalar_t__ unsleep; scalar_t__ connected_time; scalar_t__ sleep_count; scalar_t__ lock_count; scalar_t__ onion; TYPE_4__* connection; } ;
typedef TYPE_1__ TCP_con ;
typedef TYPE_2__ TCP_Connections ;
typedef int TCP_Connection_to ;
typedef int IP_Port ;


 int TCP_CONNECTIONS_STATUS_NONE ;
 scalar_t__ TCP_CONN_SLEEPING ;
 scalar_t__ TCP_CONN_VALID ;
 int crypto_box_PUBLICKEYBYTES ;
 int * get_connection (TYPE_2__*,unsigned int) ;
 TYPE_1__* get_tcp_connection (TYPE_2__*,int) ;
 int kill_TCP_connection (TYPE_4__*) ;
 int kill_tcp_relay_connection (TYPE_2__*,int) ;
 int memcpy (int *,int ,int) ;
 TYPE_4__* new_TCP_connection (int ,int *,int ,int ,int *) ;
 int set_tcp_connection_status (int *,int,int ,int ) ;

__attribute__((used)) static int reconnect_tcp_relay_connection(TCP_Connections *tcp_c, int tcp_connections_number)
{
    TCP_con *tcp_con = get_tcp_connection(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    if (tcp_con->status == TCP_CONN_SLEEPING)
        return -1;

    IP_Port ip_port = tcp_con->connection->ip_port;
    uint8_t relay_pk[crypto_box_PUBLICKEYBYTES];
    memcpy(relay_pk, tcp_con->connection->public_key, crypto_box_PUBLICKEYBYTES);
    kill_TCP_connection(tcp_con->connection);
    tcp_con->connection = new_TCP_connection(ip_port, relay_pk, tcp_c->self_public_key, tcp_c->self_secret_key,
                          &tcp_c->proxy_info);

    if (!tcp_con->connection) {
        kill_tcp_relay_connection(tcp_c, tcp_connections_number);
        return -1;
    }

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
    tcp_con->status = TCP_CONN_VALID;
    tcp_con->unsleep = 0;

    return 0;
}
