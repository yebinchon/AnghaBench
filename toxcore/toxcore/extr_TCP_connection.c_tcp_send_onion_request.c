
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {unsigned int tcp_connections_length; TYPE_1__* tcp_connections; } ;
struct TYPE_4__ {scalar_t__ status; int connection; } ;
typedef TYPE_2__ TCP_Connections ;


 scalar_t__ TCP_CONN_CONNECTED ;
 int send_onion_request (int ,int const*,int ) ;

int tcp_send_onion_request(TCP_Connections *tcp_c, unsigned int tcp_connections_number, const uint8_t *data,
                           uint16_t length)
{
    if (tcp_connections_number >= tcp_c->tcp_connections_length) {
        return -1;
    }

    if (tcp_c->tcp_connections[tcp_connections_number].status == TCP_CONN_CONNECTED) {
        int ret = send_onion_request(tcp_c->tcp_connections[tcp_connections_number].connection, data, length);

        if (ret == 1)
            return 0;
    }

    return -1;
}
