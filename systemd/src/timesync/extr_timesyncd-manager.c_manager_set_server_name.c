
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * current_server_address; TYPE_1__* current_server_name; } ;
struct TYPE_7__ {int string; } ;
typedef TYPE_1__ ServerName ;
typedef TYPE_2__ Manager ;


 int assert (TYPE_2__*) ;
 int log_debug (char*,int ) ;
 int manager_disconnect (TYPE_2__*) ;

void manager_set_server_name(Manager *m, ServerName *n) {
        assert(m);

        if (m->current_server_name == n)
                return;

        m->current_server_name = n;
        m->current_server_address = ((void*)0);

        manager_disconnect(m);

        if (n)
                log_debug("Selected server %s.", n->string);
}
