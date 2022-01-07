
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int sendback_data ;
typedef int plain ;


 int NET_PACKET_ANNOUNCE_REQUEST ;
 scalar_t__ ONION_ANNOUNCE_REQUEST_SIZE ;
 int ONION_ANNOUNCE_SENDBACK_DATA_LENGTH ;
 int ONION_PING_ID_SIZE ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int encrypt_data (int const*,int const*,int *,int *,int,int *) ;
 int memcpy (int *,int const*,int) ;
 int random_nonce (int *) ;

int create_announce_request(uint8_t *packet, uint16_t max_packet_length, const uint8_t *dest_client_id,
                            const uint8_t *public_key, const uint8_t *secret_key, const uint8_t *ping_id, const uint8_t *client_id,
                            const uint8_t *data_public_key, uint64_t sendback_data)
{
    if (max_packet_length < ONION_ANNOUNCE_REQUEST_SIZE)
        return -1;

    uint8_t plain[ONION_PING_ID_SIZE + crypto_box_PUBLICKEYBYTES + crypto_box_PUBLICKEYBYTES +
                  ONION_ANNOUNCE_SENDBACK_DATA_LENGTH];
    memcpy(plain, ping_id, ONION_PING_ID_SIZE);
    memcpy(plain + ONION_PING_ID_SIZE, client_id, crypto_box_PUBLICKEYBYTES);
    memcpy(plain + ONION_PING_ID_SIZE + crypto_box_PUBLICKEYBYTES, data_public_key, crypto_box_PUBLICKEYBYTES);
    memcpy(plain + ONION_PING_ID_SIZE + crypto_box_PUBLICKEYBYTES + crypto_box_PUBLICKEYBYTES, &sendback_data,
           sizeof(sendback_data));

    packet[0] = NET_PACKET_ANNOUNCE_REQUEST;
    random_nonce(packet + 1);

    int len = encrypt_data(dest_client_id, secret_key, packet + 1, plain, sizeof(plain),
                           packet + 1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES);

    if ((uint32_t)len + 1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES != ONION_ANNOUNCE_REQUEST_SIZE)
        return -1;

    memcpy(packet + 1 + crypto_box_NONCEBYTES, public_key, crypto_box_PUBLICKEYBYTES);

    return ONION_ANNOUNCE_REQUEST_SIZE;
}
