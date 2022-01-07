
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int what; int from_fragment; } ;
typedef TYPE_1__ Swap ;


 int SPECIAL_REMOUNT_FS_SERVICE ;
 int UNIT (TYPE_1__*) ;
 int UNIT_AFTER ;
 int UNIT_BINDS_TO ;
 int UNIT_DEPENDENCY_FILE ;
 int assert (TYPE_1__*) ;
 scalar_t__ is_device_path (int ) ;
 int unit_add_dependency_by_name (int ,int ,int ,int,int ) ;
 int unit_add_node_dependency (int ,int ,int ,int ) ;

__attribute__((used)) static int swap_add_device_dependencies(Swap *s) {
        assert(s);

        if (!s->what)
                return 0;

        if (!s->from_fragment)
                return 0;

        if (is_device_path(s->what))
                return unit_add_node_dependency(UNIT(s), s->what, UNIT_BINDS_TO, UNIT_DEPENDENCY_FILE);



        return unit_add_dependency_by_name(UNIT(s), UNIT_AFTER, SPECIAL_REMOUNT_FS_SERVICE, 1, UNIT_DEPENDENCY_FILE);
}
