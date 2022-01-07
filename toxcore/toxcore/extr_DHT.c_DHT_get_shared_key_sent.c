
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int self_secret_key; int shared_keys_sent; } ;
typedef TYPE_1__ DHT ;


 int get_shared_key (int *,int *,int ,int const*) ;

void DHT_get_shared_key_sent(DHT *dht, uint8_t *shared_key, const uint8_t *public_key)
{
    get_shared_key(&dht->shared_keys_sent, shared_key, dht->self_secret_key, public_key);
}
