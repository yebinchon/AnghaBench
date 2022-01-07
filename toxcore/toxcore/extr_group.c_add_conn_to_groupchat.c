
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
struct TYPE_12__ {TYPE_2__* m; int fr_c; } ;
struct TYPE_11__ {TYPE_1__* close; } ;
struct TYPE_10__ {int fr_c; } ;
struct TYPE_9__ {scalar_t__ type; int number; void* closest; } ;
typedef TYPE_3__ Group_c ;
typedef TYPE_4__ Group_Chats ;


 int GROUPCHAT_CALLBACK_INDEX ;
 scalar_t__ GROUPCHAT_CLOSE_CONNECTION ;
 scalar_t__ GROUPCHAT_CLOSE_NONE ;
 size_t MAX_GROUP_CONNECTIONS ;
 int friend_connection_callbacks (int ,int,int ,int *,int *,int *,TYPE_4__*,int) ;
 int friend_connection_lock (int ,int) ;
 TYPE_3__* get_group_c (TYPE_4__*,int) ;
 int handle_lossy ;
 int handle_packet ;
 int handle_status ;

__attribute__((used)) static int add_conn_to_groupchat(Group_Chats *g_c, int friendcon_id, int groupnumber, uint8_t closest, uint8_t lock)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    uint16_t i, ind = MAX_GROUP_CONNECTIONS;

    for (i = 0; i < MAX_GROUP_CONNECTIONS; ++i) {
        if (g->close[i].type == GROUPCHAT_CLOSE_NONE) {
            ind = i;
            continue;
        }

        if (g->close[i].number == (uint32_t)friendcon_id) {
            g->close[i].closest = closest;
            return i;
        }
    }

    if (ind == MAX_GROUP_CONNECTIONS)
        return -1;

    if (lock)
        friend_connection_lock(g_c->fr_c, friendcon_id);

    g->close[ind].type = GROUPCHAT_CLOSE_CONNECTION;
    g->close[ind].number = friendcon_id;
    g->close[ind].closest = closest;

    friend_connection_callbacks(g_c->m->fr_c, friendcon_id, GROUPCHAT_CALLBACK_INDEX, &handle_status, &handle_packet,
                                &handle_lossy, g_c, friendcon_id);

    return ind;
}
