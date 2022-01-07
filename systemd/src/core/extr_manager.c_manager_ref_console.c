
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n_on_console; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;

void manager_ref_console(Manager *m) {
        assert(m);

        m->n_on_console++;
}
