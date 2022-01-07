
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refuse_manual_start; } ;
typedef TYPE_1__ Unit ;


 scalar_t__ unit_can_isolate (TYPE_1__*) ;

__attribute__((used)) static bool unit_can_isolate_refuse_manual(Unit *u) {
        return unit_can_isolate(u) && !u->refuse_manual_start;
}
