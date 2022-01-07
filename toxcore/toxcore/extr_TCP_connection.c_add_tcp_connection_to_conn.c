
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* connections; } ;
struct TYPE_5__ {unsigned int tcp_connection; scalar_t__ connection_id; int status; } ;
typedef TYPE_2__ TCP_Connection_to ;


 unsigned int MAX_FRIEND_TCP_CONNECTIONS ;
 int TCP_CONNECTIONS_STATUS_NONE ;
 scalar_t__ tcp_connection_in_conn (TYPE_2__*,unsigned int) ;

__attribute__((used)) static int add_tcp_connection_to_conn(TCP_Connection_to *con_to, unsigned int tcp_connections_number)
{
    unsigned int i;

    if (tcp_connection_in_conn(con_to, tcp_connections_number))
        return -1;

    for (i = 0; i < MAX_FRIEND_TCP_CONNECTIONS; ++i) {
        if (con_to->connections[i].tcp_connection == 0) {
            con_to->connections[i].tcp_connection = tcp_connections_number + 1;
            con_to->connections[i].status = TCP_CONNECTIONS_STATUS_NONE;
            con_to->connections[i].connection_id = 0;
            return i;
        }
    }

    return -1;
}
