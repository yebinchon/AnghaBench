
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fr_c; TYPE_1__* m; } ;
struct TYPE_7__ {TYPE_2__* group_chat_object; int fr_c; } ;
typedef TYPE_1__ Messenger ;
typedef TYPE_2__ Group_Chats ;


 TYPE_2__* calloc (int,int) ;
 int handle_friend_invite_packet ;
 int m_callback_group_invite (TYPE_1__*,int *) ;

Group_Chats *new_groupchats(Messenger *m)
{
    if (!m)
        return ((void*)0);

    Group_Chats *temp = calloc(1, sizeof(Group_Chats));

    if (temp == ((void*)0))
        return ((void*)0);

    temp->m = m;
    temp->fr_c = m->fr_c;
    m->group_chat_object = temp;
    m_callback_group_invite(m, &handle_friend_invite_packet);

    return temp;
}
