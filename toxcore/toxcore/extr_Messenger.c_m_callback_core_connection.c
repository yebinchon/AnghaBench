
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* core_connection_change ) (TYPE_1__*,unsigned int,void*) ;void* core_connection_change_userdata; } ;
typedef TYPE_1__ Messenger ;



void m_callback_core_connection(Messenger *m, void (*function)(Messenger *m, unsigned int, void *), void *userdata)
{
    m->core_connection_change = function;
    m->core_connection_change_userdata = userdata;
}
