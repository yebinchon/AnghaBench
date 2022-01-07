
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* object; } ;
typedef TYPE_1__ Group_c ;
typedef int Group_Chats ;


 TYPE_1__* get_group_c (int const*,int) ;

int group_set_object(const Group_Chats *g_c, int groupnumber, void *object)
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    g->object = object;
    return 0;
}
