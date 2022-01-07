
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int no_replay ;
struct TYPE_10__ {scalar_t__ family; } ;
struct TYPE_14__ {TYPE_1__ ip; } ;
struct TYPE_13__ {int public_key; TYPE_6__ ip_port; } ;
struct TYPE_12__ {TYPE_2__* friends_list; int dht; } ;
struct TYPE_11__ {scalar_t__ last_noreplay; int (* tcp_relay_node_callback ) (void*,int ,TYPE_6__,int ) ;int tcp_relay_node_callback_number; void* tcp_relay_node_callback_object; int dht_public_key; int last_seen; int dht_pk_callback_number; int dht_pk_callback_object; int (* dht_pk_callback ) (int ,int ,scalar_t__ const*) ;} ;
typedef TYPE_3__ Onion_Client ;
typedef TYPE_4__ Node_format ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ DHTPK_DATA_MAX_LENGTH ;
 scalar_t__ DHTPK_DATA_MIN_LENGTH ;
 int DHT_getnodes (int ,TYPE_6__*,int ,int ) ;
 int MAX_SENT_NODES ;
 scalar_t__ TCP_INET ;
 scalar_t__ TCP_INET6 ;
 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 int net_to_host (scalar_t__*,int) ;
 int onion_friend_num (TYPE_3__*,scalar_t__ const*) ;
 int onion_set_friend_DHT_pubkey (TYPE_3__*,int,scalar_t__ const*) ;
 int stub1 (int ,int ,scalar_t__ const*) ;
 int stub2 (void*,int ,TYPE_6__,int ) ;
 int unix_time () ;
 int unpack_nodes (TYPE_4__*,int,int ,scalar_t__ const*,scalar_t__,int) ;

__attribute__((used)) static int handle_dhtpk_announce(void *object, const uint8_t *source_pubkey, const uint8_t *data, uint16_t length)
{
    Onion_Client *onion_c = object;

    if (length < DHTPK_DATA_MIN_LENGTH)
        return 1;

    if (length > DHTPK_DATA_MAX_LENGTH)
        return 1;

    int friend_num = onion_friend_num(onion_c, source_pubkey);

    if (friend_num == -1)
        return 1;

    uint64_t no_replay;
    memcpy(&no_replay, data + 1, sizeof(uint64_t));
    net_to_host((uint8_t *) &no_replay, sizeof(no_replay));

    if (no_replay <= onion_c->friends_list[friend_num].last_noreplay)
        return 1;

    onion_c->friends_list[friend_num].last_noreplay = no_replay;

    if (onion_c->friends_list[friend_num].dht_pk_callback)
        onion_c->friends_list[friend_num].dht_pk_callback(onion_c->friends_list[friend_num].dht_pk_callback_object,
                onion_c->friends_list[friend_num].dht_pk_callback_number, data + 1 + sizeof(uint64_t));

    onion_set_friend_DHT_pubkey(onion_c, friend_num, data + 1 + sizeof(uint64_t));
    onion_c->friends_list[friend_num].last_seen = unix_time();

    uint16_t len_nodes = length - DHTPK_DATA_MIN_LENGTH;

    if (len_nodes != 0) {
        Node_format nodes[MAX_SENT_NODES];
        int num_nodes = unpack_nodes(nodes, MAX_SENT_NODES, 0, data + 1 + sizeof(uint64_t) + crypto_box_PUBLICKEYBYTES,
                                     len_nodes, 1);

        if (num_nodes <= 0)
            return 1;

        int i;

        for (i = 0; i < num_nodes; ++i) {
            uint8_t family = nodes[i].ip_port.ip.family;

            if (family == AF_INET || family == AF_INET6) {
                DHT_getnodes(onion_c->dht, &nodes[i].ip_port, nodes[i].public_key, onion_c->friends_list[friend_num].dht_public_key);
            } else if (family == TCP_INET || family == TCP_INET6) {
                if (onion_c->friends_list[friend_num].tcp_relay_node_callback) {
                    void *obj = onion_c->friends_list[friend_num].tcp_relay_node_callback_object;
                    uint32_t number = onion_c->friends_list[friend_num].tcp_relay_node_callback_number;
                    onion_c->friends_list[friend_num].tcp_relay_node_callback(obj, number, nodes[i].ip_port, nodes[i].public_key);
                }
            }
        }
    }

    return 0;
}
