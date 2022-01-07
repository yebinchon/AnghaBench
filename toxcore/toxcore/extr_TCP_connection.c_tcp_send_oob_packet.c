
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ status; int connection; } ;
typedef TYPE_1__ TCP_con ;
typedef int TCP_Connections ;


 scalar_t__ TCP_CONN_CONNECTED ;
 TYPE_1__* get_tcp_connection (int *,unsigned int) ;
 int send_oob_packet (int ,int const*,int const*,int ) ;

int tcp_send_oob_packet(TCP_Connections *tcp_c, unsigned int tcp_connections_number, const uint8_t *public_key,
                        const uint8_t *packet, uint16_t length)
{
    TCP_con *tcp_con = get_tcp_connection(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    if (tcp_con->status != TCP_CONN_CONNECTED)
        return -1;

    int ret = send_oob_packet(tcp_con->connection, public_key, packet, length);

    if (ret == 1)
        return 0;

    return -1;
}
