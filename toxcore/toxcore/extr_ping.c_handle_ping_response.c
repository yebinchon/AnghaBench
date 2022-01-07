
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint16_t ;
typedef int ping_plain ;
typedef int ping_id ;
typedef int data ;
struct TYPE_7__ {scalar_t__* self_public_key; } ;
struct TYPE_6__ {TYPE_1__* ping; } ;
struct TYPE_5__ {int ping_array; TYPE_4__* dht; } ;
typedef TYPE_1__ PING ;
typedef int IP_Port ;
typedef TYPE_2__ DHT ;


 scalar_t__ DHT_PING_SIZE ;
 int DHT_get_shared_key_sent (TYPE_4__*,scalar_t__*,scalar_t__ const*) ;
 scalar_t__ NET_PACKET_PING_RESPONSE ;
 int PING_DATA_SIZE ;
 int PING_PLAIN_SIZE ;
 int addto_lists (TYPE_2__*,int ,scalar_t__ const*) ;
 int crypto_box_BEFORENMBYTES ;
 int crypto_box_MACBYTES ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int decrypt_data_symmetric (scalar_t__*,scalar_t__ const*,scalar_t__ const*,int,scalar_t__*) ;
 scalar_t__ id_equal (scalar_t__ const*,scalar_t__*) ;
 int ipport_equal (int *,int *) ;
 int memcpy (int *,scalar_t__*,int) ;
 int ping_array_check (scalar_t__*,int,int *,int ) ;

__attribute__((used)) static int handle_ping_response(void *_dht, IP_Port source, const uint8_t *packet, uint16_t length)
{
    DHT *dht = _dht;
    int rc;

    if (length != DHT_PING_SIZE)
        return 1;

    PING *ping = dht->ping;

    if (id_equal(packet + 1, ping->dht->self_public_key))
        return 1;

    uint8_t shared_key[crypto_box_BEFORENMBYTES];


    DHT_get_shared_key_sent(ping->dht, shared_key, packet + 1);

    uint8_t ping_plain[PING_PLAIN_SIZE];

    rc = decrypt_data_symmetric(shared_key,
                                packet + 1 + crypto_box_PUBLICKEYBYTES,
                                packet + 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES,
                                PING_PLAIN_SIZE + crypto_box_MACBYTES,
                                ping_plain);

    if (rc != sizeof(ping_plain))
        return 1;

    if (ping_plain[0] != NET_PACKET_PING_RESPONSE)
        return 1;

    uint64_t ping_id;
    memcpy(&ping_id, ping_plain + 1, sizeof(ping_id));
    uint8_t data[PING_DATA_SIZE];

    if (ping_array_check(data, sizeof(data), &ping->ping_array, ping_id) != sizeof(data))
        return 1;

    if (!id_equal(packet + 1, data))
        return 1;

    IP_Port ipp;
    memcpy(&ipp, data + crypto_box_PUBLICKEYBYTES, sizeof(IP_Port));

    if (!ipport_equal(&ipp, &source))
        return 1;

    addto_lists(dht, source, packet + 1);
    return 0;
}
