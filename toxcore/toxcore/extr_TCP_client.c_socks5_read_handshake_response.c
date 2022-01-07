
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int data ;
struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ TCP_Client_Connection ;


 int read_TCP_packet (int ,int*,int) ;

__attribute__((used)) static int socks5_read_handshake_response(TCP_Client_Connection *TCP_conn)
{
    uint8_t data[2];
    int ret = read_TCP_packet(TCP_conn->sock, data, sizeof(data));

    if (ret == -1)
        return 0;

    if (data[0] == 5 && data[1] == 0)
        return 1;

    return -1;
}
