
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t numpeers; scalar_t__ peer_number; TYPE_1__* group; } ;
struct TYPE_4__ {scalar_t__ peer_number; int last_recv; } ;
typedef TYPE_2__ Group_c ;
typedef int Group_Chats ;


 int GROUP_PING_INTERVAL ;
 int delpeer (int *,int,size_t) ;
 TYPE_2__* get_group_c (int *,int) ;
 scalar_t__ is_timeout (int ,int) ;

__attribute__((used)) static int groupchat_clear_timedout(Group_Chats *g_c, int groupnumber)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    uint32_t i;

    for (i = 0; i < g->numpeers; ++i) {
        if (g->peer_number != g->group[i].peer_number && is_timeout(g->group[i].last_recv, GROUP_PING_INTERVAL * 3)) {
            delpeer(g_c, groupnumber, i);
        }

        if (g->group == ((void*)0) || i >= g->numpeers)
            break;
    }

    return 0;
}
