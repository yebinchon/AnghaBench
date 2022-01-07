
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ MAX_CRYPTO_REQUEST_SIZE ;
 int NET_PACKET_CRYPTO ;
 scalar_t__ crypto_box_MACBYTES ;
 scalar_t__ crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int encrypt_data (int const*,int const*,int *,int *,scalar_t__,int *) ;
 int memcpy (int *,int const*,int) ;
 int new_nonce (int *) ;

int create_request(const uint8_t *send_public_key, const uint8_t *send_secret_key, uint8_t *packet,
                   const uint8_t *recv_public_key, const uint8_t *data, uint32_t length, uint8_t request_id)
{
    if (!send_public_key || !packet || !recv_public_key || !data)
        return -1;

    if (MAX_CRYPTO_REQUEST_SIZE < length + 1 + crypto_box_PUBLICKEYBYTES * 2 + crypto_box_NONCEBYTES + 1 +
            crypto_box_MACBYTES)
        return -1;

    uint8_t *nonce = packet + 1 + crypto_box_PUBLICKEYBYTES * 2;
    new_nonce(nonce);
    uint8_t temp[MAX_CRYPTO_REQUEST_SIZE];
    memcpy(temp + 1, data, length);
    temp[0] = request_id;
    int len = encrypt_data(recv_public_key, send_secret_key, nonce, temp, length + 1,
                           1 + crypto_box_PUBLICKEYBYTES * 2 + crypto_box_NONCEBYTES + packet);

    if (len == -1)
        return -1;

    packet[0] = NET_PACKET_CRYPTO;
    memcpy(packet + 1, recv_public_key, crypto_box_PUBLICKEYBYTES);
    memcpy(packet + 1 + crypto_box_PUBLICKEYBYTES, send_public_key, crypto_box_PUBLICKEYBYTES);

    return len + 1 + crypto_box_PUBLICKEYBYTES * 2 + crypto_box_NONCEBYTES;
}
