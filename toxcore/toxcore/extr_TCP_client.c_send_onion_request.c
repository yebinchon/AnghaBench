
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int packet ;
typedef int TCP_Client_Connection ;


 int TCP_PACKET_ONION_REQUEST ;
 int memcpy (int *,int const*,int ) ;
 int write_packet_TCP_secure_connection (int *,int *,int,int ) ;

int send_onion_request(TCP_Client_Connection *con, const uint8_t *data, uint16_t length)
{
    uint8_t packet[1 + length];
    packet[0] = TCP_PACKET_ONION_REQUEST;
    memcpy(packet + 1, data, length);
    return write_packet_TCP_secure_connection(con, packet, sizeof(packet), 0);
}
