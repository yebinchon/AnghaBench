
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; scalar_t__ load_state; int * dependencies; int default_dependencies; } ;
typedef TYPE_1__ Unit ;


 int UNIT_AFTER ;
 size_t UNIT_BEFORE ;
 int UNIT_DEPENDENCY_DEFAULT ;
 scalar_t__ UNIT_LOADED ;
 scalar_t__ UNIT_TARGET ;
 int assert (TYPE_1__*) ;
 scalar_t__ hashmap_get (int ,TYPE_1__*) ;
 int unit_add_dependency (TYPE_1__*,int ,TYPE_1__*,int,int ) ;

int unit_add_default_target_dependency(Unit *u, Unit *target) {
        assert(u);
        assert(target);

        if (target->type != UNIT_TARGET)
                return 0;



        if (u->load_state != UNIT_LOADED ||
            target->load_state != UNIT_LOADED)
                return 0;



        if (!u->default_dependencies ||
            !target->default_dependencies)
                return 0;


        if (hashmap_get(target->dependencies[UNIT_BEFORE], u))
                return 0;

        return unit_add_dependency(target, UNIT_AFTER, u, 1, UNIT_DEPENDENCY_DEFAULT);
}
