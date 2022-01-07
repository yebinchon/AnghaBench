
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int data ;
struct TYPE_6__ {TYPE_1__* dht; } ;
struct TYPE_5__ {int net; } ;
typedef TYPE_2__ Net_Crypto ;
typedef int IP_Port ;


 int COOKIE_REQUEST_PLAIN_LENGTH ;
 int COOKIE_RESPONSE_LENGTH ;
 int create_cookie_response (TYPE_2__*,int *,int *,int *,int *) ;
 int crypto_box_BEFORENMBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ handle_cookie_request (TYPE_2__*,int *,int *,int *,int const*,int ) ;
 scalar_t__ sendpacket (int ,int ,int *,int) ;

__attribute__((used)) static int udp_handle_cookie_request(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    Net_Crypto *c = object;
    uint8_t request_plain[COOKIE_REQUEST_PLAIN_LENGTH];
    uint8_t shared_key[crypto_box_BEFORENMBYTES];
    uint8_t dht_public_key[crypto_box_PUBLICKEYBYTES];

    if (handle_cookie_request(c, request_plain, shared_key, dht_public_key, packet, length) != 0)
        return 1;

    uint8_t data[COOKIE_RESPONSE_LENGTH];

    if (create_cookie_response(c, data, request_plain, shared_key, dht_public_key) != sizeof(data))
        return 1;

    if ((uint32_t)sendpacket(c->dht->net, source, data, sizeof(data)) != sizeof(data))
        return 1;

    return 0;
}
