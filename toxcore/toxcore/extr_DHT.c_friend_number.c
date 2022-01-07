
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_5__ {size_t num_friends; TYPE_1__* friends_list; } ;
struct TYPE_4__ {int public_key; } ;
typedef TYPE_2__ DHT ;


 scalar_t__ id_equal (int ,int const*) ;

__attribute__((used)) static int friend_number(const DHT *dht, const uint8_t *public_key)
{
    uint32_t i;

    for (i = 0; i < dht->num_friends; ++i) {
        if (id_equal(dht->friends_list[i].public_key, public_key))
            return i;
    }

    return -1;
}
