
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_9__ {int fr_c; } ;
struct TYPE_8__ {TYPE_1__* close; } ;
struct TYPE_7__ {scalar_t__ type; unsigned int number; } ;
typedef TYPE_2__ Group_c ;
typedef TYPE_3__ Group_Chats ;


 scalar_t__ GROUPCHAT_CLOSE_NONE ;
 size_t MAX_GROUP_CONNECTIONS ;
 TYPE_2__* get_group_c (TYPE_3__*,int) ;
 int kill_friend_connection (int ,int) ;

__attribute__((used)) static int remove_close_conn(Group_Chats *g_c, int groupnumber, int friendcon_id)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    uint32_t i;

    for (i = 0; i < MAX_GROUP_CONNECTIONS; ++i) {
        if (g->close[i].type == GROUPCHAT_CLOSE_NONE)
            continue;

        if (g->close[i].number == (unsigned int)friendcon_id) {
            g->close[i].type = GROUPCHAT_CLOSE_NONE;
            kill_friend_connection(g_c->fr_c, friendcon_id);
            return 0;
        }
    }

    return -1;
}
