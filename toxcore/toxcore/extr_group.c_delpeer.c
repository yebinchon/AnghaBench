
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_17__ {int group_namelistchange_userdata; int m; int (* peer_namelistchange ) (int ,int,int,int ,int ) ;int fr_c; } ;
struct TYPE_16__ {void* object; int real_pk; } ;
struct TYPE_15__ {size_t numpeers; int object; int (* peer_on_leave ) (int ,int,int,void*) ;TYPE_3__* group; int changed; TYPE_1__* closest_peers; } ;
struct TYPE_14__ {scalar_t__ entry; int real_pk; } ;
typedef TYPE_2__ Group_c ;
typedef TYPE_3__ Group_Peer ;
typedef TYPE_4__ Group_Chats ;


 int CHAT_CHANGE_PEER_DEL ;
 size_t DESIRED_CLOSE_CONNECTIONS ;
 int GROUPCHAT_CLOSEST_REMOVED ;
 int free (TYPE_3__*) ;
 TYPE_2__* get_group_c (TYPE_4__*,int) ;
 int getfriend_conn_id_pk (int ,int ) ;
 scalar_t__ id_equal (int ,int ) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 TYPE_3__* realloc (TYPE_3__*,int) ;
 int remove_close_conn (TYPE_4__*,int,int) ;
 int stub1 (int ,int,int,int ,int ) ;
 int stub2 (int ,int,int,void*) ;

__attribute__((used)) static int delpeer(Group_Chats *g_c, int groupnumber, int peer_index)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    uint32_t i;

    for (i = 0; i < DESIRED_CLOSE_CONNECTIONS; ++i) {
        if (g->closest_peers[i].entry && id_equal(g->closest_peers[i].real_pk, g->group[peer_index].real_pk)) {
            g->closest_peers[i].entry = 0;
            g->changed = GROUPCHAT_CLOSEST_REMOVED;
            break;
        }
    }

    int friendcon_id = getfriend_conn_id_pk(g_c->fr_c, g->group[peer_index].real_pk);

    if (friendcon_id != -1) {
        remove_close_conn(g_c, groupnumber, friendcon_id);
    }

    Group_Peer *temp;
    --g->numpeers;

    void *peer_object = g->group[peer_index].object;

    if (g->numpeers == 0) {
        free(g->group);
        g->group = ((void*)0);
    } else {
        if (g->numpeers != (uint32_t)peer_index)
            memcpy(&g->group[peer_index], &g->group[g->numpeers], sizeof(Group_Peer));

        temp = realloc(g->group, sizeof(Group_Peer) * (g->numpeers));

        if (temp == ((void*)0))
            return -1;

        g->group = temp;
    }

    if (g_c->peer_namelistchange)
        g_c->peer_namelistchange(g_c->m, groupnumber, peer_index, CHAT_CHANGE_PEER_DEL, g_c->group_namelistchange_userdata);

    if (g->peer_on_leave)
        g->peer_on_leave(g->object, groupnumber, peer_index, peer_object);

    return 0;
}
