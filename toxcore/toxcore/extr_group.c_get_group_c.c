
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * chats; } ;
typedef int Group_c ;
typedef TYPE_1__ Group_Chats ;


 scalar_t__ groupnumber_not_valid (TYPE_1__ const*,int) ;

__attribute__((used)) static Group_c *get_group_c(const Group_Chats *g_c, int groupnumber)
{
    if (groupnumber_not_valid(g_c, groupnumber))
        return 0;

    return &g_c->chats[groupnumber];
}
