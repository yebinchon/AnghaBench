
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int manager; int default_dependencies; } ;
typedef int Swap ;


 int MANAGER_IS_SYSTEM (int ) ;
 int SPECIAL_SWAP_TARGET ;
 int SPECIAL_UMOUNT_TARGET ;
 TYPE_1__* UNIT (int *) ;
 int UNIT_BEFORE ;
 int UNIT_CONFLICTS ;
 int UNIT_DEPENDENCY_DEFAULT ;
 int assert (int *) ;
 scalar_t__ detect_container () ;
 int unit_add_dependency_by_name (TYPE_1__*,int ,int ,int,int ) ;
 int unit_add_two_dependencies_by_name (TYPE_1__*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int swap_add_default_dependencies(Swap *s) {
        int r;

        assert(s);

        if (!UNIT(s)->default_dependencies)
                return 0;

        if (!MANAGER_IS_SYSTEM(UNIT(s)->manager))
                return 0;

        if (detect_container() > 0)
                return 0;



        r = unit_add_dependency_by_name(UNIT(s), UNIT_BEFORE, SPECIAL_SWAP_TARGET, 1, UNIT_DEPENDENCY_DEFAULT);
        if (r < 0)
                return r;

        return unit_add_two_dependencies_by_name(UNIT(s), UNIT_BEFORE, UNIT_CONFLICTS, SPECIAL_UMOUNT_TARGET, 1, UNIT_DEPENDENCY_DEFAULT);
}
