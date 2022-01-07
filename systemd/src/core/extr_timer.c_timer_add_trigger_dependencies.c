
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
typedef int Timer ;
struct TYPE_4__ {int * dependencies; } ;


 TYPE_1__* UNIT (int *) ;
 int UNIT_BEFORE ;
 int UNIT_DEPENDENCY_IMPLICIT ;
 size_t UNIT_TRIGGERS ;
 int assert (int *) ;
 int hashmap_isempty (int ) ;
 int unit_add_two_dependencies (TYPE_1__*,int ,size_t,int *,int,int ) ;
 int unit_load_related_unit (TYPE_1__*,char*,int **) ;

__attribute__((used)) static int timer_add_trigger_dependencies(Timer *t) {
        Unit *x;
        int r;

        assert(t);

        if (!hashmap_isempty(UNIT(t)->dependencies[UNIT_TRIGGERS]))
                return 0;

        r = unit_load_related_unit(UNIT(t), ".service", &x);
        if (r < 0)
                return r;

        return unit_add_two_dependencies(UNIT(t), UNIT_BEFORE, UNIT_TRIGGERS, x, 1, UNIT_DEPENDENCY_IMPLICIT);
}
