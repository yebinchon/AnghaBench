
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int on_console; int manager; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int manager_ref_console (int ) ;
 int manager_unref_console (int ) ;
 int unit_needs_console (TYPE_1__*) ;

__attribute__((used)) static void unit_update_on_console(Unit *u) {
        bool b;

        assert(u);

        b = unit_needs_console(u);
        if (u->on_console == b)
                return;

        u->on_console = b;
        if (b)
                manager_ref_console(u->manager);
        else
                manager_unref_console(u->manager);
}
