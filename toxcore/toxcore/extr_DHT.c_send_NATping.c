
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_5__ {int self_secret_key; int self_public_key; } ;
typedef TYPE_1__ DHT ;


 int CRYPTO_PACKET_NAT_PING ;
 int MAX_CRYPTO_REQUEST_SIZE ;
 int create_request (int ,int ,int*,int const*,int*,int,int ) ;
 int memcpy (int*,int *,int) ;
 int route_tofriend (TYPE_1__*,int const*,int*,int) ;
 int routeone_tofriend (TYPE_1__*,int const*,int*,int) ;

__attribute__((used)) static int send_NATping(DHT *dht, const uint8_t *public_key, uint64_t ping_id, uint8_t type)
{
    uint8_t data[sizeof(uint64_t) + 1];
    uint8_t packet[MAX_CRYPTO_REQUEST_SIZE];

    int num = 0;

    data[0] = type;
    memcpy(data + 1, &ping_id, sizeof(uint64_t));

    int len = create_request(dht->self_public_key, dht->self_secret_key, packet, public_key, data,
                             sizeof(uint64_t) + 1, CRYPTO_PACKET_NAT_PING);

    if (len == -1)
        return -1;

    if (type == 0)
        num = route_tofriend(dht, public_key, packet, len);
    else if (type == 1)
        num = routeone_tofriend(dht, public_key, packet, len);

    if (num == 0)
        return -1;

    return num;
}
