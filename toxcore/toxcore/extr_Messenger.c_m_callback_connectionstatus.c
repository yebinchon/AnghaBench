
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* friend_connectionstatuschange ) (TYPE_1__*,uint32_t,unsigned int,void*) ;void* friend_connectionstatuschange_userdata; } ;
typedef TYPE_1__ Messenger ;



void m_callback_connectionstatus(Messenger *m, void (*function)(Messenger *m, uint32_t, unsigned int, void *),
                                 void *userdata)
{
    m->friend_connectionstatuschange = function;
    m->friend_connectionstatuschange_userdata = userdata;
}
