
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int fr_c; } ;
struct TYPE_15__ {scalar_t__ changed; unsigned int numpeers; int identifier; TYPE_3__* closest_peers; TYPE_2__* close; TYPE_1__* group; } ;
struct TYPE_14__ {int temp_pk; int real_pk; int entry; } ;
struct TYPE_13__ {scalar_t__ type; int number; int closest; } ;
struct TYPE_12__ {int temp_pk; int real_pk; } ;
typedef TYPE_4__ Group_c ;
typedef TYPE_5__ Group_Chats ;


 unsigned int DESIRED_CLOSE_CONNECTIONS ;
 scalar_t__ FRIENDCONN_STATUS_CONNECTED ;
 scalar_t__ GROUPCHAT_CLOSEST_NONE ;
 scalar_t__ GROUPCHAT_CLOSEST_REMOVED ;
 scalar_t__ GROUPCHAT_CLOSE_NONE ;
 unsigned int MAX_GROUP_CONNECTIONS ;
 int add_conn_to_groupchat (TYPE_5__*,int,int,int,int) ;
 int add_to_closest (TYPE_5__*,int,int ,int ) ;
 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ friend_con_connected (int ,int) ;
 int get_friendcon_public_keys (int*,int*,int ,int ) ;
 TYPE_4__* get_group_c (TYPE_5__*,int) ;
 int getfriend_conn_id_pk (int ,int ) ;
 int kill_friend_connection (int ,int ) ;
 int new_friend_connection (int ,int ) ;
 int pk_in_closest_peers (TYPE_4__*,int*) ;
 int send_packet_online (int ,int,int,int ) ;
 int set_dht_temp_pk (int ,int,int ) ;

__attribute__((used)) static int connect_to_closest(Group_Chats *g_c, int groupnumber)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    if (!g->changed)
        return 0;

    unsigned int i;

    if (g->changed == GROUPCHAT_CLOSEST_REMOVED) {
        for (i = 0; i < g->numpeers; ++i) {
            add_to_closest(g_c, groupnumber, g->group[i].real_pk, g->group[i].temp_pk);
        }
    }

    for (i = 0; i < MAX_GROUP_CONNECTIONS; ++i) {
        if (g->close[i].type == GROUPCHAT_CLOSE_NONE)
            continue;

        if (!g->close[i].closest)
            continue;

        uint8_t real_pk[crypto_box_PUBLICKEYBYTES];
        uint8_t dht_temp_pk[crypto_box_PUBLICKEYBYTES];
        get_friendcon_public_keys(real_pk, dht_temp_pk, g_c->fr_c, g->close[i].number);

        if (!pk_in_closest_peers(g, real_pk)) {
            g->close[i].type = GROUPCHAT_CLOSE_NONE;
            kill_friend_connection(g_c->fr_c, g->close[i].number);
        }
    }

    for (i = 0; i < DESIRED_CLOSE_CONNECTIONS; ++i) {
        if (!g->closest_peers[i].entry)
            continue;

        int friendcon_id = getfriend_conn_id_pk(g_c->fr_c, g->closest_peers[i].real_pk);

        uint8_t lock = 1;

        if (friendcon_id == -1) {
            friendcon_id = new_friend_connection(g_c->fr_c, g->closest_peers[i].real_pk);
            lock = 0;

            if (friendcon_id == -1) {
                continue;
            }

            set_dht_temp_pk(g_c->fr_c, friendcon_id, g->closest_peers[i].temp_pk);
        }

        add_conn_to_groupchat(g_c, friendcon_id, groupnumber, 1, lock);

        if (friend_con_connected(g_c->fr_c, friendcon_id) == FRIENDCONN_STATUS_CONNECTED) {
            send_packet_online(g_c->fr_c, friendcon_id, groupnumber, g->identifier);
        }
    }

    g->changed = GROUPCHAT_CLOSEST_NONE;

    return 0;
}
