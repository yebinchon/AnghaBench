
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int public_key; } ;
struct TYPE_13__ {unsigned int connections_length; scalar_t__ onion_num_conns; scalar_t__ onion_status; } ;
struct TYPE_12__ {int onion; scalar_t__ connected_time; int status; } ;
typedef TYPE_1__ TCP_con ;
typedef TYPE_2__ TCP_Connections ;
typedef TYPE_3__ TCP_Connection_to ;


 scalar_t__ NUM_ONION_TCP_CONNECTIONS ;
 int TCP_CONN_CONNECTED ;
 TYPE_3__* get_connection (TYPE_2__*,unsigned int) ;
 TYPE_1__* get_tcp_connection (TYPE_2__*,int) ;
 scalar_t__ send_tcp_relay_routing_request (TYPE_2__*,int,int ) ;
 scalar_t__ tcp_connection_in_conn (TYPE_3__*,int) ;
 int tcp_relay_set_callbacks (TYPE_2__*,int) ;
 scalar_t__ unix_time () ;

__attribute__((used)) static int tcp_relay_on_online(TCP_Connections *tcp_c, int tcp_connections_number)
{
    TCP_con *tcp_con = get_tcp_connection(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    unsigned int i, sent = 0;

    for (i = 0; i < tcp_c->connections_length; ++i) {
        TCP_Connection_to *con_to = get_connection(tcp_c, i);

        if (con_to) {
            if (tcp_connection_in_conn(con_to, tcp_connections_number)) {
                if (send_tcp_relay_routing_request(tcp_c, tcp_connections_number, con_to->public_key) == 0) {
                    ++sent;
                }
            }
        }
    }

    tcp_relay_set_callbacks(tcp_c, tcp_connections_number);
    tcp_con->status = TCP_CONN_CONNECTED;


    if (sent) {
        tcp_con->connected_time = unix_time();
    } else {
        tcp_con->connected_time = 0;
    }

    if (tcp_c->onion_status && tcp_c->onion_num_conns < NUM_ONION_TCP_CONNECTIONS) {
        tcp_con->onion = 1;
        ++tcp_c->onion_num_conns;
    }

    return 0;
}
