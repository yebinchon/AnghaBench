
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {TYPE_1__* c; } ;
struct TYPE_4__ {int self_secret_key; } ;
typedef TYPE_2__ Onion_Client ;
typedef int IP_Port ;


 scalar_t__ DATA_IN_RESPONSE_MIN_SIZE ;
 scalar_t__ DHTPK_DATA_MAX_LENGTH ;
 scalar_t__ DHTPK_DATA_MIN_LENGTH ;
 scalar_t__ crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int decrypt_data (int const*,int ,int const*,int const*,scalar_t__,int *) ;
 int handle_dhtpk_announce (TYPE_2__*,int const*,int *,int) ;
 scalar_t__ public_key_cmp (int const*,int *) ;

__attribute__((used)) static int handle_dht_dhtpk(void *object, IP_Port source, const uint8_t *source_pubkey, const uint8_t *packet,
                            uint16_t length)
{
    Onion_Client *onion_c = object;

    if (length < DHTPK_DATA_MIN_LENGTH + DATA_IN_RESPONSE_MIN_SIZE + crypto_box_NONCEBYTES)
        return 1;

    if (length > DHTPK_DATA_MAX_LENGTH + DATA_IN_RESPONSE_MIN_SIZE + crypto_box_NONCEBYTES)
        return 1;

    uint8_t plain[DHTPK_DATA_MAX_LENGTH];
    int len = decrypt_data(packet, onion_c->c->self_secret_key, packet + crypto_box_PUBLICKEYBYTES,
                           packet + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES,
                           length - (crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES), plain);

    if (len != length - (DATA_IN_RESPONSE_MIN_SIZE + crypto_box_NONCEBYTES))
        return 1;

    if (public_key_cmp(source_pubkey, plain + 1 + sizeof(uint64_t)) != 0)
        return 1;

    return handle_dhtpk_announce(onion_c, packet, plain, len);
}
