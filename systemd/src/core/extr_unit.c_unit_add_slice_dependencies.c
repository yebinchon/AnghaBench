
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int UnitDependencyMask ;
struct TYPE_8__ {scalar_t__ type; int slice; } ;
typedef TYPE_1__ Unit ;


 int SPECIAL_ROOT_SLICE ;
 int UNIT_AFTER ;
 int UNIT_DEPENDENCY_FILE ;
 int UNIT_DEPENDENCY_IMPLICIT ;
 int UNIT_DEREF (int ) ;
 int UNIT_HAS_CGROUP_CONTEXT (TYPE_1__*) ;
 scalar_t__ UNIT_ISSET (int ) ;
 int UNIT_REQUIRES ;
 scalar_t__ UNIT_SLICE ;
 int assert (TYPE_1__*) ;
 int unit_add_two_dependencies (TYPE_1__*,int ,int ,int ,int,int ) ;
 int unit_add_two_dependencies_by_name (TYPE_1__*,int ,int ,int ,int,int ) ;
 scalar_t__ unit_has_name (TYPE_1__*,int ) ;

__attribute__((used)) static int unit_add_slice_dependencies(Unit *u) {
        UnitDependencyMask mask;
        assert(u);

        if (!UNIT_HAS_CGROUP_CONTEXT(u))
                return 0;




        mask = u->type == UNIT_SLICE ? UNIT_DEPENDENCY_IMPLICIT : UNIT_DEPENDENCY_FILE;

        if (UNIT_ISSET(u->slice))
                return unit_add_two_dependencies(u, UNIT_AFTER, UNIT_REQUIRES, UNIT_DEREF(u->slice), 1, mask);

        if (unit_has_name(u, SPECIAL_ROOT_SLICE))
                return 0;

        return unit_add_two_dependencies_by_name(u, UNIT_AFTER, UNIT_REQUIRES, SPECIAL_ROOT_SLICE, 1, mask);
}
