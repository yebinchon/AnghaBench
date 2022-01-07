
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* entries; } ;
struct TYPE_4__ {int public_key; int time; } ;
typedef TYPE_2__ Onion_Announce ;


 unsigned int ONION_ANNOUNCE_MAX_ENTRIES ;
 int ONION_ANNOUNCE_TIMEOUT ;
 int is_timeout (int ,int ) ;
 scalar_t__ public_key_cmp (int ,int const*) ;

__attribute__((used)) static int in_entries(const Onion_Announce *onion_a, const uint8_t *public_key)
{
    unsigned int i;

    for (i = 0; i < ONION_ANNOUNCE_MAX_ENTRIES; ++i) {
        if (!is_timeout(onion_a->entries[i].time, ONION_ANNOUNCE_TIMEOUT)
                && public_key_cmp(onion_a->entries[i].public_key, public_key) == 0)
            return i;
    }

    return -1;
}
