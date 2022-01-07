
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* close; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_2__ Group_c ;


 scalar_t__ GROUPCHAT_CLOSE_ONLINE ;
 unsigned int MAX_GROUP_CONNECTIONS ;

__attribute__((used)) static unsigned int count_close_connected(Group_c *g)
{
    unsigned int i, count = 0;

    for (i = 0; i < MAX_GROUP_CONNECTIONS; ++i) {
        if (g->close[i].type == GROUPCHAT_CLOSE_ONLINE) {
            ++count;
        }
    }

    return count;
}
