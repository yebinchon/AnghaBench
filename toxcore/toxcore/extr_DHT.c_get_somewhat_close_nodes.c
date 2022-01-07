
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int sa_family_t ;
struct TYPE_5__ {size_t num_friends; TYPE_1__* friends_list; int close_clientlist; } ;
struct TYPE_4__ {int client_list; } ;
typedef int Node_format ;
typedef TYPE_2__ DHT ;


 int LCLIENT_LIST ;
 int MAX_FRIEND_CLIENTS ;
 int get_close_nodes_inner (int const*,int *,int ,int ,int ,size_t*,int ,int ) ;

__attribute__((used)) static int get_somewhat_close_nodes(const DHT *dht, const uint8_t *public_key, Node_format *nodes_list,
                                    sa_family_t sa_family, uint8_t is_LAN, uint8_t want_good)
{
    uint32_t num_nodes = 0, i;
    get_close_nodes_inner(public_key, nodes_list, sa_family,
                          dht->close_clientlist, LCLIENT_LIST, &num_nodes, is_LAN, 0);







    for (i = 0; i < dht->num_friends; ++i)
        get_close_nodes_inner(public_key, nodes_list, sa_family,
                              dht->friends_list[i].client_list, MAX_FRIEND_CLIENTS,
                              &num_nodes, is_LAN, 0);

    return num_nodes;
}
