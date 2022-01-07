
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int last_connection_status; int core_connection_change_userdata; int (* core_connection_change ) (TYPE_1__*,unsigned int,int ) ;int onion_c; } ;
typedef TYPE_1__ Messenger ;


 unsigned int onion_connection_status (int ) ;
 int stub1 (TYPE_1__*,unsigned int,int ) ;

__attribute__((used)) static void connection_status_cb(Messenger *m)
{
    unsigned int conn_status = onion_connection_status(m->onion_c);

    if (conn_status != m->last_connection_status) {
        if (m->core_connection_change)
            (*m->core_connection_change)(m, conn_status, m->core_connection_change_userdata);

        m->last_connection_status = conn_status;
    }
}
