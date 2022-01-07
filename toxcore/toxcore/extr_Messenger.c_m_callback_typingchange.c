
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* friend_typingchange ) (TYPE_1__*,uint32_t,_Bool,void*) ;void* friend_typingchange_userdata; } ;
typedef TYPE_1__ Messenger ;



void m_callback_typingchange(Messenger *m, void(*function)(Messenger *m, uint32_t, _Bool, void *), void *userdata)
{
    m->friend_typingchange = function;
    m->friend_typingchange_userdata = userdata;
}
