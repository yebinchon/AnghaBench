
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {unsigned int num_friends; TYPE_2__* friends_list; } ;
struct TYPE_8__ {unsigned int num_to_bootstrap; int bootstrap_times; int client_list; int public_key; int lastgetnode; TYPE_1__* to_bootstrap; } ;
struct TYPE_7__ {int public_key; int ip_port; } ;
typedef TYPE_2__ DHT_Friend ;
typedef TYPE_3__ DHT ;


 int MAX_FRIEND_CLIENTS ;
 int do_ping_and_sendnode_requests (TYPE_3__*,int *,int ,int ,int ,int *,int) ;
 int getnodes (TYPE_3__*,int ,int ,int ,int *) ;

__attribute__((used)) static void do_DHT_friends(DHT *dht)
{
    unsigned int i, j;

    for (i = 0; i < dht->num_friends; ++i) {
        DHT_Friend *friend = &dht->friends_list[i];

        for (j = 0; j < friend->num_to_bootstrap; ++j) {
            getnodes(dht, friend->to_bootstrap[j].ip_port, friend->to_bootstrap[j].public_key, friend->public_key, ((void*)0));
        }

        friend->num_to_bootstrap = 0;

        do_ping_and_sendnode_requests(dht, &friend->lastgetnode, friend->public_key, friend->client_list, MAX_FRIEND_CLIENTS,
                                      &friend->bootstrap_times, 1);
    }
}
