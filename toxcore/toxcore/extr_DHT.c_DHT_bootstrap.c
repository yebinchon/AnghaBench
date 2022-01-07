
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int self_public_key; } ;
typedef int IP_Port ;
typedef TYPE_1__ DHT ;


 int getnodes (TYPE_1__*,int ,int const*,int ,int *) ;

void DHT_bootstrap(DHT *dht, IP_Port ip_port, const uint8_t *public_key)
{
    getnodes(dht, ip_port, public_key, dht->self_public_key, ((void*)0));
}
