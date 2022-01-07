
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint32_t ;
struct TYPE_7__ {int status; int temp_secret_key; int temp_public_key; int real_public_key; } ;
struct TYPE_6__ {unsigned int num_friends; TYPE_5__* friends_list; } ;
typedef int Onion_Friend ;
typedef TYPE_1__ Onion_Client ;


 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_keypair (int ,int ) ;
 int memcpy (int ,int const*,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int onion_friend_num (TYPE_1__*,int const*) ;
 int realloc_onion_friends (TYPE_1__*,int) ;

int onion_addfriend(Onion_Client *onion_c, const uint8_t *public_key)
{
    int num = onion_friend_num(onion_c, public_key);

    if (num != -1)
        return num;

    unsigned int i, index = ~0;

    for (i = 0; i < onion_c->num_friends; ++i) {
        if (onion_c->friends_list[i].status == 0) {
            index = i;
            break;
        }
    }

    if (index == (uint32_t)~0) {
        if (realloc_onion_friends(onion_c, onion_c->num_friends + 1) == -1)
            return -1;

        index = onion_c->num_friends;
        memset(&(onion_c->friends_list[onion_c->num_friends]), 0, sizeof(Onion_Friend));
        ++onion_c->num_friends;
    }

    onion_c->friends_list[index].status = 1;
    memcpy(onion_c->friends_list[index].real_public_key, public_key, crypto_box_PUBLICKEYBYTES);
    crypto_box_keypair(onion_c->friends_list[index].temp_public_key, onion_c->friends_list[index].temp_secret_key);
    return index;
}
