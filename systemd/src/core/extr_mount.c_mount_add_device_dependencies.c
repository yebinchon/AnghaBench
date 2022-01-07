
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UnitDependencyMask ;
typedef int UnitDependency ;
struct TYPE_11__ {scalar_t__ from_proc_self_mountinfo; int where; } ;
struct TYPE_10__ {int what; } ;
typedef TYPE_1__ MountParameters ;
typedef TYPE_2__ Mount ;


 int UNIT (TYPE_2__*) ;
 int UNIT_BINDS_TO ;
 int UNIT_DEPENDENCY_FILE ;
 int UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT ;
 int UNIT_REQUIRES ;
 int assert (TYPE_2__*) ;
 TYPE_1__* get_mount_parameters (TYPE_2__*) ;
 int is_device_path (int ) ;
 scalar_t__ mount_is_bind (TYPE_1__*) ;
 scalar_t__ mount_is_bound_to_device (TYPE_2__*) ;
 scalar_t__ path_equal (int ,char*) ;
 int unit_add_node_dependency (int ,int ,int ,int ) ;

__attribute__((used)) static int mount_add_device_dependencies(Mount *m) {
        UnitDependencyMask mask;
        MountParameters *p;
        UnitDependency dep;
        int r;

        assert(m);

        p = get_mount_parameters(m);
        if (!p)
                return 0;

        if (!p->what)
                return 0;

        if (mount_is_bind(p))
                return 0;

        if (!is_device_path(p->what))
                return 0;




        if (path_equal(p->what, "/dev/root"))
                return 0;

        if (path_equal(m->where, "/"))
                return 0;






        dep = mount_is_bound_to_device(m) ? UNIT_BINDS_TO : UNIT_REQUIRES;


        mask = m->from_proc_self_mountinfo ? UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT : UNIT_DEPENDENCY_FILE;

        r = unit_add_node_dependency(UNIT(m), p->what, dep, mask);
        if (r < 0)
                return r;

        return 0;
}
