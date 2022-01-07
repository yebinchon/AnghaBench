
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint16_t ;
struct TYPE_10__ {int family; } ;
struct TYPE_9__ {void* port; TYPE_2__ ip; } ;
typedef TYPE_1__ IP_Port ;
typedef TYPE_2__ IP ;
typedef int DHT ;


 int AF_UNSPEC ;
 int DHT_bootstrap (int *,TYPE_1__,int const*) ;
 scalar_t__ addr_resolve_or_parse_ip (char const*,TYPE_2__*,TYPE_2__*) ;
 int ip_init (TYPE_2__*,int ) ;
 scalar_t__ ip_isset (TYPE_2__*) ;
 int ip_reset (TYPE_2__*) ;

int DHT_bootstrap_from_address(DHT *dht, const char *address, uint8_t ipv6enabled,
                               uint16_t port, const uint8_t *public_key)
{
    IP_Port ip_port_v64;
    IP *ip_extra = ((void*)0);
    IP_Port ip_port_v4;
    ip_init(&ip_port_v64.ip, ipv6enabled);

    if (ipv6enabled) {

        ip_port_v64.ip.family = AF_UNSPEC;
        ip_reset(&ip_port_v4.ip);
        ip_extra = &ip_port_v4.ip;
    }

    if (addr_resolve_or_parse_ip(address, &ip_port_v64.ip, ip_extra)) {
        ip_port_v64.port = port;
        DHT_bootstrap(dht, ip_port_v64, public_key);

        if ((ip_extra != ((void*)0)) && ip_isset(ip_extra)) {
            ip_port_v4.port = port;
            DHT_bootstrap(dht, ip_port_v4, public_key);
        }

        return 1;
    } else
        return 0;
}
