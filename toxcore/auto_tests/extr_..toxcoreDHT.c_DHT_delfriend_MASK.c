#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint16_t ;
struct TYPE_13__ {int num_friends; TYPE_2__* friends_list; } ;
struct TYPE_12__ {TYPE_1__* callbacks; scalar_t__ lock_count; } ;
struct TYPE_11__ {scalar_t__ number; int /*<<< orphan*/ * data; int /*<<< orphan*/ * ip_callback; } ;
typedef  TYPE_2__ DHT_Friend ;
typedef  TYPE_3__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int) ; 

int FUNC4(DHT *dht, const uint8_t *public_key, uint16_t lock_count)
{
    int friend_num = FUNC1(dht, public_key);

    if (friend_num == -1) {
        return -1;
    }

    DHT_Friend *friend = &dht->friends_list[friend_num];
    --friend->lock_count;

    if (friend->lock_count && lock_count) { /* DHT friend is still in use.*/
        --lock_count;
        friend->callbacks[lock_count].ip_callback = NULL;
        friend->callbacks[lock_count].data = NULL;
        friend->callbacks[lock_count].number = 0;
        return 0;
    }

    DHT_Friend *temp;

    --dht->num_friends;

    if (dht->num_friends != friend_num) {
        FUNC2( &dht->friends_list[friend_num],
                &dht->friends_list[dht->num_friends],
                sizeof(DHT_Friend) );
    }

    if (dht->num_friends == 0) {
        FUNC0(dht->friends_list);
        dht->friends_list = NULL;
        return 0;
    }

    temp = FUNC3(dht->friends_list, sizeof(DHT_Friend) * (dht->num_friends));

    if (temp == NULL)
        return -1;

    dht->friends_list = temp;
    return 0;
}