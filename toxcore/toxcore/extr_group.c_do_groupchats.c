
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {unsigned int num_chats; } ;
struct TYPE_9__ {scalar_t__ status; } ;
typedef TYPE_1__ Group_c ;
typedef TYPE_2__ Group_Chats ;


 scalar_t__ GROUPCHAT_STATUS_CONNECTED ;
 int connect_to_closest (TYPE_2__*,unsigned int) ;
 TYPE_1__* get_group_c (TYPE_2__*,unsigned int) ;
 int groupchat_clear_timedout (TYPE_2__*,unsigned int) ;
 int ping_groupchat (TYPE_2__*,unsigned int) ;

void do_groupchats(Group_Chats *g_c)
{
    unsigned int i;

    for (i = 0; i < g_c->num_chats; ++i) {
        Group_c *g = get_group_c(g_c, i);

        if (!g)
            continue;

        if (g->status == GROUPCHAT_STATUS_CONNECTED) {
            connect_to_closest(g_c, i);
            ping_groupchat(g_c, i);
            groupchat_clear_timedout(g_c, i);
        }
    }


}
