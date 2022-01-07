
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ n_on_console; int no_console_output; } ;
typedef TYPE_1__ Manager ;


 int assert (int) ;

void manager_unref_console(Manager *m) {

        assert(m->n_on_console > 0);
        m->n_on_console--;

        if (m->n_on_console == 0)
                m->no_console_output = 0;
}
