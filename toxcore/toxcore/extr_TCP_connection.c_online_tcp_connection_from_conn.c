
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* connections; } ;
struct TYPE_4__ {scalar_t__ status; scalar_t__ tcp_connection; } ;
typedef TYPE_2__ TCP_Connection_to ;


 unsigned int MAX_FRIEND_TCP_CONNECTIONS ;
 scalar_t__ TCP_CONNECTIONS_STATUS_ONLINE ;

__attribute__((used)) static unsigned int online_tcp_connection_from_conn(TCP_Connection_to *con_to)
{
    unsigned int i, count = 0;

    for (i = 0; i < MAX_FRIEND_TCP_CONNECTIONS; ++i) {
        if (con_to->connections[i].tcp_connection) {
            if (con_to->connections[i].status == TCP_CONNECTIONS_STATUS_ONLINE) {
                ++count;
            }
        }
    }

    return count;
}
