
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ numpeers; TYPE_1__* group; } ;
struct TYPE_4__ {void* object; } ;
typedef TYPE_2__ Group_c ;
typedef int Group_Chats ;


 TYPE_2__* get_group_c (int const*,int) ;

void *group_peer_get_object(const Group_Chats *g_c, int groupnumber, int peernumber)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return ((void*)0);

    if ((uint32_t)peernumber >= g->numpeers)
        return ((void*)0);

    return g->group[peernumber].object;
}
