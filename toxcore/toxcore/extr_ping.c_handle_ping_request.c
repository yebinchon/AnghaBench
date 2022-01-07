
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint16_t ;
typedef int ping_plain ;
typedef int ping_id ;
struct TYPE_9__ {TYPE_2__* ping; } ;
struct TYPE_8__ {TYPE_1__* dht; } ;
struct TYPE_7__ {int self_public_key; } ;
typedef TYPE_2__ PING ;
typedef int IP_Port ;
typedef TYPE_3__ DHT ;


 scalar_t__ DHT_PING_SIZE ;
 int DHT_get_shared_key_recv (TYPE_3__*,scalar_t__*,scalar_t__ const*) ;
 scalar_t__ NET_PACKET_PING_REQUEST ;
 int PING_PLAIN_SIZE ;
 int add_to_ping (TYPE_2__*,scalar_t__ const*,int ) ;
 int crypto_box_BEFORENMBYTES ;
 int crypto_box_MACBYTES ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int decrypt_data_symmetric (scalar_t__*,scalar_t__ const*,scalar_t__ const*,int,scalar_t__*) ;
 scalar_t__ id_equal (scalar_t__ const*,int ) ;
 int memcpy (int *,scalar_t__*,int) ;
 int send_ping_response (TYPE_2__*,int ,scalar_t__ const*,int ,scalar_t__*) ;

__attribute__((used)) static int handle_ping_request(void *_dht, IP_Port source, const uint8_t *packet, uint16_t length)
{
    DHT *dht = _dht;
    int rc;

    if (length != DHT_PING_SIZE)
        return 1;

    PING *ping = dht->ping;

    if (id_equal(packet + 1, ping->dht->self_public_key))
        return 1;

    uint8_t shared_key[crypto_box_BEFORENMBYTES];

    uint8_t ping_plain[PING_PLAIN_SIZE];

    DHT_get_shared_key_recv(dht, shared_key, packet + 1);
    rc = decrypt_data_symmetric(shared_key,
                                packet + 1 + crypto_box_PUBLICKEYBYTES,
                                packet + 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES,
                                PING_PLAIN_SIZE + crypto_box_MACBYTES,
                                ping_plain );

    if (rc != sizeof(ping_plain))
        return 1;

    if (ping_plain[0] != NET_PACKET_PING_REQUEST)
        return 1;

    uint64_t ping_id;
    memcpy(&ping_id, ping_plain + 1, sizeof(ping_id));

    send_ping_response(ping, source, packet + 1, ping_id, shared_key);
    add_to_ping(ping, packet + 1, source);

    return 0;
}
