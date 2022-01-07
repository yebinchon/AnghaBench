
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
typedef void* int32_t ;
struct TYPE_14__ {int num_friends; TYPE_3__* friends_list; } ;
struct TYPE_11__ {int NATping_id; } ;
struct TYPE_13__ {scalar_t__ lock_count; int to_bootstrap; int public_key; int num_to_bootstrap; TYPE_2__* callbacks; TYPE_1__ nat; } ;
struct TYPE_12__ {void (* ip_callback ) (void*,void*,IP_Port) ;void* number; void* data; } ;
typedef TYPE_3__ DHT_Friend ;
typedef TYPE_4__ DHT ;


 scalar_t__ DHT_FRIEND_MAX_LOCKS ;
 int crypto_box_PUBLICKEYBYTES ;
 int friend_number (TYPE_4__*,int const*) ;
 int get_close_nodes (TYPE_4__*,int ,int ,int ,int,int ) ;
 int memcpy (int ,int const*,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int random_64b () ;
 TYPE_3__* realloc (TYPE_3__*,int) ;

int DHT_addfriend(DHT *dht, const uint8_t *public_key, void (*ip_callback)(void *data, int32_t number, IP_Port),
                  void *data, int32_t number, uint16_t *lock_count)
{
    int friend_num = friend_number(dht, public_key);

    uint16_t lock_num;

    if (friend_num != -1) {
        DHT_Friend *friend = &dht->friends_list[friend_num];

        if (friend->lock_count == DHT_FRIEND_MAX_LOCKS)
            return -1;

        lock_num = friend->lock_count;
        ++friend->lock_count;
        friend->callbacks[lock_num].ip_callback = ip_callback;
        friend->callbacks[lock_num].data = data;
        friend->callbacks[lock_num].number = number;

        if (lock_count)
            *lock_count = lock_num + 1;

        return 0;
    }

    DHT_Friend *temp;
    temp = realloc(dht->friends_list, sizeof(DHT_Friend) * (dht->num_friends + 1));

    if (temp == ((void*)0))
        return -1;

    dht->friends_list = temp;
    DHT_Friend *friend = &dht->friends_list[dht->num_friends];
    memset(friend, 0, sizeof(DHT_Friend));
    memcpy(friend->public_key, public_key, crypto_box_PUBLICKEYBYTES);

    friend->nat.NATping_id = random_64b();
    ++dht->num_friends;

    lock_num = friend->lock_count;
    ++friend->lock_count;
    friend->callbacks[lock_num].ip_callback = ip_callback;
    friend->callbacks[lock_num].data = data;
    friend->callbacks[lock_num].number = number;

    if (lock_count)
        *lock_count = lock_num + 1;

    friend->num_to_bootstrap = get_close_nodes(dht, friend->public_key, friend->to_bootstrap, 0, 1, 0);

    return 0;
}
