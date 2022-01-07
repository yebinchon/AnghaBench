
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int data ;
typedef int TCP_Secure_Connection ;


 int TCP_PACKET_ROUTING_RESPONSE ;
 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int *,int const*,int ) ;
 int write_packet_TCP_secure_connection (int *,int *,int,int) ;

__attribute__((used)) static int send_routing_response(TCP_Secure_Connection *con, uint8_t rpid, const uint8_t *public_key)
{
    uint8_t data[1 + 1 + crypto_box_PUBLICKEYBYTES];
    data[0] = TCP_PACKET_ROUTING_RESPONSE;
    data[1] = rpid;
    memcpy(data + 2, public_key, crypto_box_PUBLICKEYBYTES);

    return write_packet_TCP_secure_connection(con, data, sizeof(data), 1);
}
