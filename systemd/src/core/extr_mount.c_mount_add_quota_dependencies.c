
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UnitDependencyMask ;
struct TYPE_9__ {int manager; } ;
struct TYPE_8__ {scalar_t__ from_fragment; } ;
typedef int MountParameters ;
typedef TYPE_1__ Mount ;


 int MANAGER_IS_SYSTEM (int ) ;
 int SPECIAL_QUOTACHECK_SERVICE ;
 int SPECIAL_QUOTAON_SERVICE ;
 TYPE_2__* UNIT (TYPE_1__*) ;
 int UNIT_BEFORE ;
 int UNIT_DEPENDENCY_FILE ;
 int UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT ;
 int UNIT_WANTS ;
 int assert (TYPE_1__*) ;
 int * get_mount_parameters_fragment (TYPE_1__*) ;
 int mount_needs_quota (int *) ;
 int unit_add_two_dependencies_by_name (TYPE_2__*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int mount_add_quota_dependencies(Mount *m) {
        UnitDependencyMask mask;
        MountParameters *p;
        int r;

        assert(m);

        if (!MANAGER_IS_SYSTEM(UNIT(m)->manager))
                return 0;

        p = get_mount_parameters_fragment(m);
        if (!p)
                return 0;

        if (!mount_needs_quota(p))
                return 0;

        mask = m->from_fragment ? UNIT_DEPENDENCY_FILE : UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT;

        r = unit_add_two_dependencies_by_name(UNIT(m), UNIT_BEFORE, UNIT_WANTS, SPECIAL_QUOTACHECK_SERVICE, 1, mask);
        if (r < 0)
                return r;

        r = unit_add_two_dependencies_by_name(UNIT(m), UNIT_BEFORE, UNIT_WANTS, SPECIAL_QUOTAON_SERVICE, 1, mask);
        if (r < 0)
                return r;

        return 0;
}
