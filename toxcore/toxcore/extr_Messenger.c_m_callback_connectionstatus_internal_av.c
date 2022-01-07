
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* friend_connectionstatuschange_internal ) (TYPE_1__*,uint32_t,uint8_t,void*) ;void* friend_connectionstatuschange_internal_userdata; } ;
typedef TYPE_1__ Messenger ;



void m_callback_connectionstatus_internal_av(Messenger *m, void (*function)(Messenger *m, uint32_t, uint8_t, void *),
        void *userdata)
{
    m->friend_connectionstatuschange_internal = function;
    m->friend_connectionstatuschange_internal_userdata = userdata;
}
