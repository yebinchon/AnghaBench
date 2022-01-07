
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_8__ {int * uint8; } ;
struct TYPE_7__ {int * uint8; } ;
struct TYPE_9__ {scalar_t__ family; TYPE_2__ ip6; TYPE_1__ ip4; } ;
struct TYPE_10__ {int port; TYPE_3__ ip; } ;
struct TYPE_11__ {int* last_packet; int last_packet_length; scalar_t__ last_packet_sent; TYPE_4__ ip_port; } ;
typedef TYPE_5__ TCP_Client_Connection ;
typedef int IP6 ;
typedef int IP4 ;


 scalar_t__ AF_INET ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static void proxy_socks5_generate_connection_request(TCP_Client_Connection *TCP_conn)
{
    TCP_conn->last_packet[0] = 5;
    TCP_conn->last_packet[1] = 1;
    TCP_conn->last_packet[2] = 0;
    uint16_t length = 3;

    if (TCP_conn->ip_port.ip.family == AF_INET) {
        TCP_conn->last_packet[3] = 1;
        ++length;
        memcpy(TCP_conn->last_packet + length, TCP_conn->ip_port.ip.ip4.uint8, sizeof(IP4));
        length += sizeof(IP4);
    } else {
        TCP_conn->last_packet[3] = 4;
        ++length;
        memcpy(TCP_conn->last_packet + length, TCP_conn->ip_port.ip.ip6.uint8, sizeof(IP6));
        length += sizeof(IP6);
    }

    memcpy(TCP_conn->last_packet + length, &TCP_conn->ip_port.port, sizeof(uint16_t));
    length += sizeof(uint16_t);

    TCP_conn->last_packet_length = length;
    TCP_conn->last_packet_sent = 0;
}
