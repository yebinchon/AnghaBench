
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int tcp_connections_length; TYPE_1__* tcp_connections; } ;
struct TYPE_4__ {scalar_t__ status; scalar_t__ onion; } ;
typedef TYPE_2__ TCP_Connections ;


 scalar_t__ TCP_CONN_CONNECTED ;
 unsigned int rand () ;

int get_random_tcp_onion_conn_number(TCP_Connections *tcp_c)
{
    unsigned int i, r = rand();

    for (i = 0; i < tcp_c->tcp_connections_length; ++i) {
        unsigned int index = ((i + r) % tcp_c->tcp_connections_length);

        if (tcp_c->tcp_connections[index].onion && tcp_c->tcp_connections[index].status == TCP_CONN_CONNECTED) {
            return index;
        }
    }

    return -1;
}
