
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int packet ;
struct TYPE_4__ {int ping_request_id; } ;
typedef TYPE_1__ TCP_Client_Connection ;


 int TCP_PACKET_PING ;
 int memcpy (int *,int *,int) ;
 int write_packet_TCP_secure_connection (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static int send_ping_request(TCP_Client_Connection *con)
{
    if (!con->ping_request_id)
        return 1;

    uint8_t packet[1 + sizeof(uint64_t)];
    packet[0] = TCP_PACKET_PING;
    memcpy(packet + 1, &con->ping_request_id, sizeof(uint64_t));
    int ret;

    if ((ret = write_packet_TCP_secure_connection(con, packet, sizeof(packet), 1)) == 1) {
        con->ping_request_id = 0;
    }

    return ret;
}
