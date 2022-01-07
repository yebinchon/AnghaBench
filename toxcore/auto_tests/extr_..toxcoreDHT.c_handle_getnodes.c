
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_4__ {int ping; int self_public_key; } ;
typedef int IP_Port ;
typedef TYPE_1__ DHT ;


 int DHT_get_shared_key_recv (TYPE_1__*,int *,int const*) ;
 int add_to_ping (int ,int const*,int ) ;
 int crypto_box_BEFORENMBYTES ;
 int crypto_box_MACBYTES ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int decrypt_data_symmetric (int *,int const*,int const*,int,int *) ;
 scalar_t__ id_equal (int const*,int ) ;
 int sendnodes_ipv6 (TYPE_1__*,int ,int const*,int *,int *,int,int *) ;

__attribute__((used)) static int handle_getnodes(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    if (length != (1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES + sizeof(
                       uint64_t) + crypto_box_MACBYTES))
        return 1;

    DHT *dht = object;


    if (id_equal(packet + 1, dht->self_public_key))
        return 1;

    uint8_t plain[crypto_box_PUBLICKEYBYTES + sizeof(uint64_t)];
    uint8_t shared_key[crypto_box_BEFORENMBYTES];

    DHT_get_shared_key_recv(dht, shared_key, packet + 1);
    int len = decrypt_data_symmetric( shared_key,
                                      packet + 1 + crypto_box_PUBLICKEYBYTES,
                                      packet + 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES,
                                      crypto_box_PUBLICKEYBYTES + sizeof(uint64_t) + crypto_box_MACBYTES,
                                      plain );

    if (len != crypto_box_PUBLICKEYBYTES + sizeof(uint64_t))
        return 1;

    sendnodes_ipv6(dht, source, packet + 1, plain, plain + crypto_box_PUBLICKEYBYTES, sizeof(uint64_t), shared_key);

    add_to_ping(dht->ping, packet + 1, source);

    return 0;
}
