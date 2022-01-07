
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int manager; int default_dependencies; } ;
typedef int Automount ;


 int MANAGER_IS_SYSTEM (int ) ;
 int SPECIAL_LOCAL_FS_PRE_TARGET ;
 int SPECIAL_UMOUNT_TARGET ;
 TYPE_1__* UNIT (int *) ;
 int UNIT_AFTER ;
 int UNIT_BEFORE ;
 int UNIT_CONFLICTS ;
 int UNIT_DEPENDENCY_DEFAULT ;
 int assert (int *) ;
 int unit_add_dependency_by_name (TYPE_1__*,int ,int ,int,int ) ;
 int unit_add_two_dependencies_by_name (TYPE_1__*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int automount_add_default_dependencies(Automount *a) {
        int r;

        assert(a);

        if (!UNIT(a)->default_dependencies)
                return 0;

        if (!MANAGER_IS_SYSTEM(UNIT(a)->manager))
                return 0;

        r = unit_add_dependency_by_name(UNIT(a), UNIT_AFTER, SPECIAL_LOCAL_FS_PRE_TARGET, 1, UNIT_DEPENDENCY_DEFAULT);
        if (r < 0)
                return r;

        r = unit_add_two_dependencies_by_name(UNIT(a), UNIT_BEFORE, UNIT_CONFLICTS, SPECIAL_UMOUNT_TARGET, 1, UNIT_DEPENDENCY_DEFAULT);
        if (r < 0)
                return r;

        return 0;
}
