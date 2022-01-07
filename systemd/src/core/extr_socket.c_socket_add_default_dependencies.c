
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int manager; int default_dependencies; } ;
typedef int Socket ;


 scalar_t__ MANAGER_IS_SYSTEM (int ) ;
 int SPECIAL_SHUTDOWN_TARGET ;
 int SPECIAL_SOCKETS_TARGET ;
 int SPECIAL_SYSINIT_TARGET ;
 TYPE_1__* UNIT (int *) ;
 int UNIT_AFTER ;
 int UNIT_BEFORE ;
 int UNIT_CONFLICTS ;
 int UNIT_DEPENDENCY_DEFAULT ;
 int UNIT_REQUIRES ;
 int assert (int *) ;
 int unit_add_dependency_by_name (TYPE_1__*,int ,int ,int,int ) ;
 int unit_add_two_dependencies_by_name (TYPE_1__*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int socket_add_default_dependencies(Socket *s) {
        int r;
        assert(s);

        if (!UNIT(s)->default_dependencies)
                return 0;

        r = unit_add_dependency_by_name(UNIT(s), UNIT_BEFORE, SPECIAL_SOCKETS_TARGET, 1, UNIT_DEPENDENCY_DEFAULT);
        if (r < 0)
                return r;

        if (MANAGER_IS_SYSTEM(UNIT(s)->manager)) {
                r = unit_add_two_dependencies_by_name(UNIT(s), UNIT_AFTER, UNIT_REQUIRES, SPECIAL_SYSINIT_TARGET, 1, UNIT_DEPENDENCY_DEFAULT);
                if (r < 0)
                        return r;
        }

        return unit_add_two_dependencies_by_name(UNIT(s), UNIT_BEFORE, UNIT_CONFLICTS, SPECIAL_SHUTDOWN_TARGET, 1, UNIT_DEPENDENCY_DEFAULT);
}
