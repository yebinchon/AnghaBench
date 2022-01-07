
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* peer_on_leave ) (void*,int,int,void*) ;} ;
typedef TYPE_1__ Group_c ;
typedef int Group_Chats ;


 TYPE_1__* get_group_c (int *,int) ;

int callback_groupchat_peer_delete(Group_Chats *g_c, int groupnumber, void (*function)(void *, int, int, void *))
{
    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return -1;

    g->peer_on_leave = function;
    return 0;
}
