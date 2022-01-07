
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int ip; } ;
typedef TYPE_1__ IP_Port ;
typedef int DHT ;


 int DHT_bootstrap (int *,TYPE_1__,int const*) ;
 int LAN_ip (int ) ;
 scalar_t__ crypto_box_PUBLICKEYBYTES ;

__attribute__((used)) static int handle_LANdiscovery(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    DHT *dht = object;

    if (LAN_ip(source.ip) == -1)
        return 1;

    if (length != crypto_box_PUBLICKEYBYTES + 1)
        return 1;

    DHT_bootstrap(dht, source, packet + 1);
    return 0;
}
