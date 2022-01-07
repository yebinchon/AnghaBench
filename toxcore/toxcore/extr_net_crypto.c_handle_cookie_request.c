
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int dht; } ;
typedef TYPE_1__ Net_Crypto ;


 scalar_t__ COOKIE_REQUEST_LENGTH ;
 int COOKIE_REQUEST_PLAIN_LENGTH ;
 int DHT_get_shared_key_sent (int ,int *,int *) ;
 scalar_t__ crypto_box_MACBYTES ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int decrypt_data_symmetric (int *,int const*,int const*,scalar_t__,int *) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int handle_cookie_request(const Net_Crypto *c, uint8_t *request_plain, uint8_t *shared_key,
                                 uint8_t *dht_public_key, const uint8_t *packet, uint16_t length)
{
    if (length != COOKIE_REQUEST_LENGTH)
        return -1;

    memcpy(dht_public_key, packet + 1, crypto_box_PUBLICKEYBYTES);
    DHT_get_shared_key_sent(c->dht, shared_key, dht_public_key);
    int len = decrypt_data_symmetric(shared_key, packet + 1 + crypto_box_PUBLICKEYBYTES,
                                     packet + 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES, COOKIE_REQUEST_PLAIN_LENGTH + crypto_box_MACBYTES,
                                     request_plain);

    if (len != COOKIE_REQUEST_PLAIN_LENGTH)
        return -1;

    return 0;
}
