
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* friend_userstatuschange ) (TYPE_1__*,uint32_t,unsigned int,void*) ;void* friend_userstatuschange_userdata; } ;
typedef TYPE_1__ Messenger ;



void m_callback_userstatus(Messenger *m, void (*function)(Messenger *m, uint32_t, unsigned int, void *), void *userdata)
{
    m->friend_userstatuschange = function;
    m->friend_userstatuschange_userdata = userdata;
}
