
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {TYPE_1__* friends_list; } ;
struct TYPE_4__ {int client_list; } ;
typedef int Node_format ;
typedef TYPE_2__ DHT ;


 unsigned int DHT_FAKE_FRIEND_NUMBER ;
 int MAX_FRIEND_CLIENTS ;
 scalar_t__ list_nodes (int ,int ,int *,scalar_t__) ;
 unsigned int rand () ;

uint16_t randfriends_nodes(DHT *dht, Node_format *nodes, uint16_t max_num)
{
    if (max_num == 0)
        return 0;

    uint16_t count = 0;
    unsigned int i, r = rand();

    for (i = 0; i < DHT_FAKE_FRIEND_NUMBER; ++i) {
        count += list_nodes(dht->friends_list[(i + r) % DHT_FAKE_FRIEND_NUMBER].client_list, MAX_FRIEND_CLIENTS, nodes + count,
                            max_num - count);

        if (count >= max_num)
            break;
    }

    return count;
}
