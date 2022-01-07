
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ sa_family_t ;
struct TYPE_5__ {TYPE_1__* close_clientlist; } ;
struct TYPE_4__ {int assoc6; int assoc4; int public_key; } ;
typedef int IPPTsPng ;
typedef TYPE_2__ DHT ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 size_t LCLIENT_LIST ;
 scalar_t__ public_key_cmp (int ,int const*) ;

__attribute__((used)) static IPPTsPng *get_closelist_IPPTsPng(DHT *dht, const uint8_t *public_key, sa_family_t sa_family)
{
    uint32_t i;

    for (i = 0; i < LCLIENT_LIST; ++i) {
        if (public_key_cmp(dht->close_clientlist[i].public_key, public_key) != 0)
            continue;

        if (sa_family == AF_INET)
            return &dht->close_clientlist[i].assoc4;
        else if (sa_family == AF_INET6)
            return &dht->close_clientlist[i].assoc6;
    }

    return ((void*)0);
}
