
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {unsigned int num_friends; TYPE_1__* friends_list; } ;
struct TYPE_4__ {scalar_t__ status; int real_public_key; } ;
typedef TYPE_2__ Onion_Client ;


 scalar_t__ public_key_cmp (int const*,int ) ;

int onion_friend_num(const Onion_Client *onion_c, const uint8_t *public_key)
{
    unsigned int i;

    for (i = 0; i < onion_c->num_friends; ++i) {
        if (onion_c->friends_list[i].status == 0)
            continue;

        if (public_key_cmp(public_key, onion_c->friends_list[i].real_public_key) == 0)
            return i;
    }

    return -1;
}
