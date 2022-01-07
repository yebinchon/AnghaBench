
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {unsigned int tcp_connections_length; } ;
struct TYPE_8__ {scalar_t__ status; TYPE_1__* connection; int relay_pk; } ;
struct TYPE_7__ {int public_key; } ;
typedef TYPE_2__ TCP_con ;
typedef TYPE_3__ TCP_Connections ;


 scalar_t__ TCP_CONN_SLEEPING ;
 TYPE_2__* get_tcp_connection (TYPE_3__*,unsigned int) ;
 scalar_t__ public_key_cmp (int ,int const*) ;

__attribute__((used)) static int find_tcp_connection_relay(TCP_Connections *tcp_c, const uint8_t *relay_pk)
{
    unsigned int i;

    for (i = 0; i < tcp_c->tcp_connections_length; ++i) {
        TCP_con *tcp_con = get_tcp_connection(tcp_c, i);

        if (tcp_con) {
            if (tcp_con->status == TCP_CONN_SLEEPING) {
                if (public_key_cmp(tcp_con->relay_pk, relay_pk) == 0) {
                    return i;
                }
            } else {
                if (public_key_cmp(tcp_con->connection->public_key, relay_pk) == 0) {
                    return i;
                }
            }
        }
    }

    return -1;
}
