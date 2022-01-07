
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int* uint8; } ;
struct TYPE_13__ {TYPE_1__ ip6; } ;
struct TYPE_12__ {scalar_t__ onion_c; scalar_t__ onion_a; scalar_t__ onion; } ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_2__ TCP_Proxy_Info ;
typedef TYPE_3__ Onions ;
typedef TYPE_4__ IP ;
typedef int DHT ;


 int ip_init (TYPE_4__*,int) ;
 TYPE_3__* malloc (int) ;
 int * new_DHT (int ) ;
 int new_net_crypto (int *,TYPE_2__*) ;
 int new_networking (TYPE_4__,int ) ;
 scalar_t__ new_onion (int *) ;
 scalar_t__ new_onion_announce (int *) ;
 scalar_t__ new_onion_client (int ) ;

Onions *new_onions(uint16_t port)
{
    IP ip;
    ip_init(&ip, 1);
    ip.ip6.uint8[15] = 1;
    Onions *on = malloc(sizeof(Onions));
    DHT *dht = new_DHT(new_networking(ip, port));
    on->onion = new_onion(dht);
    on->onion_a = new_onion_announce(dht);
    TCP_Proxy_Info inf = {0};
    on->onion_c = new_onion_client(new_net_crypto(dht, &inf));

    if (on->onion && on->onion_a && on->onion_c)
        return on;

    return ((void*)0);
}
