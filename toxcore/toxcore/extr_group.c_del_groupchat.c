
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int object; } ;
struct TYPE_12__ {int fr_c; } ;
struct TYPE_11__ {unsigned int numpeers; int object; int (* group_on_delete ) (int ,int) ;TYPE_8__* group; int (* peer_on_leave ) (int ,int,unsigned int,int ) ;TYPE_1__* close; int peer_number; } ;
struct TYPE_10__ {scalar_t__ type; int number; } ;
typedef TYPE_2__ Group_c ;
typedef TYPE_3__ Group_Chats ;


 scalar_t__ GROUPCHAT_CLOSE_NONE ;
 unsigned int MAX_GROUP_CONNECTIONS ;
 int free (TYPE_8__*) ;
 TYPE_2__* get_group_c (TYPE_3__*,int) ;
 int group_kill_peer_send (TYPE_3__*,int,int ) ;
 int kill_friend_connection (int ,int ) ;
 int stub1 (int ,int,unsigned int,int ) ;
 int stub2 (int ,int) ;
 int wipe_group_chat (TYPE_3__*,int) ;

int del_groupchat(Group_Chats *g_c, int groupnumber)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    group_kill_peer_send(g_c, groupnumber, g->peer_number);

    unsigned int i;

    for (i = 0; i < MAX_GROUP_CONNECTIONS; ++i) {
        if (g->close[i].type == GROUPCHAT_CLOSE_NONE)
            continue;

        g->close[i].type = GROUPCHAT_CLOSE_NONE;
        kill_friend_connection(g_c->fr_c, g->close[i].number);
    }

    for (i = 0; i < g->numpeers; ++i) {
        if (g->peer_on_leave)
            g->peer_on_leave(g->object, groupnumber, i, g->group[i].object);
    }

    free(g->group);

    if (g->group_on_delete)
        g->group_on_delete(g->object, groupnumber);

    return wipe_group_chat(g_c, groupnumber);
}
