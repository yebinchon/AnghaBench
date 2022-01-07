
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int packet ;
typedef int TCP_Client_Connection ;


 scalar_t__ TCP_MAX_OOB_DATA_LENGTH ;
 int TCP_PACKET_OOB_SEND ;
 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int *,int const*,scalar_t__) ;
 int write_packet_TCP_secure_connection (int *,int *,int,int ) ;

int send_oob_packet(TCP_Client_Connection *con, const uint8_t *public_key, const uint8_t *data, uint16_t length)
{
    if (length == 0 || length > TCP_MAX_OOB_DATA_LENGTH)
        return -1;

    uint8_t packet[1 + crypto_box_PUBLICKEYBYTES + length];
    packet[0] = TCP_PACKET_OOB_SEND;
    memcpy(packet + 1, public_key, crypto_box_PUBLICKEYBYTES);
    memcpy(packet + 1 + crypto_box_PUBLICKEYBYTES, data, length);
    return write_packet_TCP_secure_connection(con, packet, sizeof(packet), 0);
}
