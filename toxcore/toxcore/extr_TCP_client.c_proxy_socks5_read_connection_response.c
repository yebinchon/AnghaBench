
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int data ;
struct TYPE_5__ {scalar_t__ family; } ;
struct TYPE_6__ {TYPE_1__ ip; } ;
struct TYPE_7__ {int sock; TYPE_2__ ip_port; } ;
typedef TYPE_3__ TCP_Client_Connection ;
typedef int IP6 ;
typedef int IP4 ;


 scalar_t__ AF_INET ;
 int read_TCP_packet (int ,int*,int) ;

__attribute__((used)) static int proxy_socks5_read_connection_response(TCP_Client_Connection *TCP_conn)
{
    if (TCP_conn->ip_port.ip.family == AF_INET) {
        uint8_t data[4 + sizeof(IP4) + sizeof(uint16_t)];
        int ret = read_TCP_packet(TCP_conn->sock, data, sizeof(data));

        if (ret == -1)
            return 0;

        if (data[0] == 5 && data[1] == 0)
            return 1;

    } else {
        uint8_t data[4 + sizeof(IP6) + sizeof(uint16_t)];
        int ret = read_TCP_packet(TCP_conn->sock, data, sizeof(data));

        if (ret == -1)
            return 0;

        if (data[0] == 5 && data[1] == 0)
            return 1;
    }

    return -1;
}
