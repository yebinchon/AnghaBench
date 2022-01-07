
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_1__* close; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ number; } ;
typedef TYPE_2__ Group_c ;


 scalar_t__ GROUPCHAT_CLOSE_NONE ;
 unsigned int MAX_GROUP_CONNECTIONS ;

__attribute__((used)) static int friend_in_close(Group_c *g, int friendcon_id)
{
    unsigned int i;

    for (i = 0; i < MAX_GROUP_CONNECTIONS; ++i) {
        if (g->close[i].type == GROUPCHAT_CLOSE_NONE)
            continue;

        if (g->close[i].number != (uint32_t)friendcon_id)
            continue;

        return i;
    }

    return -1;
}
