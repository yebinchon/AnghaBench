
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* last_packet; int last_packet_length; scalar_t__ last_packet_sent; } ;
typedef TYPE_1__ TCP_Client_Connection ;



__attribute__((used)) static void proxy_socks5_generate_handshake(TCP_Client_Connection *TCP_conn)
{
    TCP_conn->last_packet[0] = 5;
    TCP_conn->last_packet[1] = 1;
    TCP_conn->last_packet[2] = 0;

    TCP_conn->last_packet_length = 3;
    TCP_conn->last_packet_sent = 0;
}
