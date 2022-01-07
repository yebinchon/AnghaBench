
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int Automount ;


 int UNIT (int *) ;
 int UNIT_BEFORE ;
 int UNIT_DEPENDENCY_IMPLICIT ;
 int UNIT_TRIGGERS ;
 int assert (int *) ;
 int unit_add_two_dependencies (int ,int ,int ,int *,int,int ) ;
 int unit_load_related_unit (int ,char*,int **) ;

__attribute__((used)) static int automount_add_trigger_dependencies(Automount *a) {
        Unit *x;
        int r;

        assert(a);

        r = unit_load_related_unit(UNIT(a), ".mount", &x);
        if (r < 0)
                return r;

        return unit_add_two_dependencies(UNIT(a), UNIT_BEFORE, UNIT_TRIGGERS, x, 1, UNIT_DEPENDENCY_IMPLICIT);
}
