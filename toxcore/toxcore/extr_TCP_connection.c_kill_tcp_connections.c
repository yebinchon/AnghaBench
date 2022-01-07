
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int tcp_connections_length; struct TYPE_4__* connections; struct TYPE_4__* tcp_connections; int connection; } ;
typedef TYPE_1__ TCP_Connections ;


 int free (TYPE_1__*) ;
 int kill_TCP_connection (int ) ;

void kill_tcp_connections(TCP_Connections *tcp_c)
{
    unsigned int i;

    for (i = 0; i < tcp_c->tcp_connections_length; ++i) {
        kill_TCP_connection(tcp_c->tcp_connections[i].connection);
    }

    free(tcp_c->tcp_connections);
    free(tcp_c->connections);
    free(tcp_c);
}
