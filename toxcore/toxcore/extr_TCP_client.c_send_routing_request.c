
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int packet ;
typedef int TCP_Client_Connection ;


 int TCP_PACKET_ROUTING_REQUEST ;
 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int *,int *,int ) ;
 int write_packet_TCP_secure_connection (int *,int *,int,int) ;

int send_routing_request(TCP_Client_Connection *con, uint8_t *public_key)
{
    uint8_t packet[1 + crypto_box_PUBLICKEYBYTES];
    packet[0] = TCP_PACKET_ROUTING_REQUEST;
    memcpy(packet + 1, public_key, crypto_box_PUBLICKEYBYTES);
    return write_packet_TCP_secure_connection(con, packet, sizeof(packet), 1);
}
