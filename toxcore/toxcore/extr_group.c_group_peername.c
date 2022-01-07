
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ numpeers; TYPE_1__* group; } ;
struct TYPE_4__ {int nick_len; char* nick; } ;
typedef TYPE_2__ Group_c ;
typedef int Group_Chats ;


 TYPE_2__* get_group_c (int const*,int) ;
 int memcpy (int *,char*,int) ;

int group_peername(const Group_Chats *g_c, int groupnumber, int peernumber, uint8_t *name)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    if ((uint32_t)peernumber >= g->numpeers)
        return -1;

    if (g->group[peernumber].nick_len == 0) {
        memcpy(name, "Tox User", 8);
        return 8;
    }

    memcpy(name, g->group[peernumber].nick, g->group[peernumber].nick_len);
    return g->group[peernumber].nick_len;
}
