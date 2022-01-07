
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int system_bus; } ;
typedef TYPE_1__ Manager ;


 int destroy_bus (TYPE_1__*,int *) ;

void bus_done_system(Manager *m) {
        destroy_bus(m, &m->system_bus);
}
