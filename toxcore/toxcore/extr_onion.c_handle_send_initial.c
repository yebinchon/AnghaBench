
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {TYPE_1__* dht; int shared_keys_1; } ;
struct TYPE_5__ {int self_secret_key; } ;
typedef TYPE_2__ Onion ;
typedef int IP_Port ;


 scalar_t__ ONION_MAX_PACKET_SIZE ;
 scalar_t__ SEND_1 ;
 int change_symmetric_key (TYPE_2__*) ;
 int crypto_box_BEFORENMBYTES ;
 int crypto_box_MACBYTES ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int decrypt_data_symmetric (int *,int const*,int const*,scalar_t__,int *) ;
 int get_shared_key (int *,int *,int ,int const*) ;
 int onion_send_1 (TYPE_2__*,int *,int,int ,int const*) ;

__attribute__((used)) static int handle_send_initial(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    Onion *onion = object;

    if (length > ONION_MAX_PACKET_SIZE)
        return 1;

    if (length <= 1 + SEND_1)
        return 1;

    change_symmetric_key(onion);

    uint8_t plain[ONION_MAX_PACKET_SIZE];
    uint8_t shared_key[crypto_box_BEFORENMBYTES];
    get_shared_key(&onion->shared_keys_1, shared_key, onion->dht->self_secret_key, packet + 1 + crypto_box_NONCEBYTES);
    int len = decrypt_data_symmetric(shared_key, packet + 1, packet + 1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES,
                                     length - (1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES), plain);

    if (len != length - (1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES + crypto_box_MACBYTES))
        return 1;

    return onion_send_1(onion, plain, len, source, packet + 1);
}
