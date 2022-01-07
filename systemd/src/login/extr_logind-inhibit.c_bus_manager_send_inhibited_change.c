
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mode; int manager; } ;
typedef TYPE_1__ Inhibitor ;


 scalar_t__ INHIBIT_BLOCK ;
 int assert (TYPE_1__*) ;
 int manager_send_changed (int ,char const*,int *) ;

__attribute__((used)) static int bus_manager_send_inhibited_change(Inhibitor *i) {
        const char *property;

        assert(i);

        property = i->mode == INHIBIT_BLOCK ? "BlockInhibited" : "DelayInhibited";

        return manager_send_changed(i->manager, property, ((void*)0));
}
