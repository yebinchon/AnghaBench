
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ group_chat_object; } ;
struct TYPE_6__ {unsigned int num_chats; TYPE_2__* m; } ;
typedef TYPE_1__ Group_Chats ;


 int del_groupchat (TYPE_1__*,unsigned int) ;
 int free (TYPE_1__*) ;
 int m_callback_group_invite (TYPE_2__*,int *) ;

void kill_groupchats(Group_Chats *g_c)
{
    unsigned int i;

    for (i = 0; i < g_c->num_chats; ++i) {
        del_groupchat(g_c, i);
    }

    m_callback_group_invite(g_c->m, ((void*)0));
    g_c->m->group_chat_object = 0;
    free(g_c);
}
