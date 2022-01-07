
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {TYPE_1__* cryptopackethandlers; int self_secret_key; int self_public_key; } ;
struct TYPE_4__ {int (* function ) (int ,int ,scalar_t__*,scalar_t__*,int) ;int object; } ;
typedef int IP_Port ;
typedef TYPE_2__ DHT ;


 int MAX_CRYPTO_REQUEST_SIZE ;
 scalar_t__ const NET_PACKET_CRYPTO ;
 int crypto_box_MACBYTES ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int handle_request (int ,int ,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__ const*,int) ;
 scalar_t__ public_key_cmp (scalar_t__ const*,int ) ;
 int route_packet (TYPE_2__*,scalar_t__ const*,scalar_t__ const*,int) ;
 int stub1 (int ,int ,scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static int cryptopacket_handle(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    DHT *dht = object;

    if (packet[0] == NET_PACKET_CRYPTO) {
        if (length <= crypto_box_PUBLICKEYBYTES * 2 + crypto_box_NONCEBYTES + 1 + crypto_box_MACBYTES ||
                length > MAX_CRYPTO_REQUEST_SIZE + crypto_box_MACBYTES)
            return 1;

        if (public_key_cmp(packet + 1, dht->self_public_key) == 0) {
            uint8_t public_key[crypto_box_PUBLICKEYBYTES];
            uint8_t data[MAX_CRYPTO_REQUEST_SIZE];
            uint8_t number;
            int len = handle_request(dht->self_public_key, dht->self_secret_key, public_key, data, &number, packet, length);

            if (len == -1 || len == 0)
                return 1;

            if (!dht->cryptopackethandlers[number].function) return 1;

            return dht->cryptopackethandlers[number].function(dht->cryptopackethandlers[number].object, source, public_key,
                    data, len);

        } else {
            int retval = route_packet(dht, packet + 1, packet, length);

            if ((unsigned int)retval == length)
                return 0;
        }
    }

    return 1;
}
