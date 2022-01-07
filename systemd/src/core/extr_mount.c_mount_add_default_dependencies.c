
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UnitDependencyMask ;
struct TYPE_17__ {int default_dependencies; } ;
struct TYPE_14__ {int options; } ;
struct TYPE_16__ {TYPE_1__ parameters_fragment; scalar_t__ from_fragment; } ;
struct TYPE_15__ {int fstype; } ;
typedef TYPE_2__ MountParameters ;
typedef TYPE_3__ Mount ;


 char* SPECIAL_LOCAL_FS_PRE_TARGET ;
 char* SPECIAL_LOCAL_FS_TARGET ;
 int SPECIAL_NETWORK_ONLINE_TARGET ;
 char const* SPECIAL_NETWORK_TARGET ;
 char* SPECIAL_REMOTE_FS_PRE_TARGET ;
 char* SPECIAL_REMOTE_FS_TARGET ;
 char const* SPECIAL_SWAP_TARGET ;
 int SPECIAL_UMOUNT_TARGET ;
 TYPE_4__* UNIT (TYPE_3__*) ;
 int UNIT_AFTER ;
 int UNIT_BEFORE ;
 int UNIT_CONFLICTS ;
 int UNIT_DEPENDENCY_FILE ;
 int UNIT_DEPENDENCY_MOUNTINFO_DEFAULT ;
 int UNIT_WANTS ;
 int assert (TYPE_3__*) ;
 int fstab_test_yes_no_option (int ,char*) ;
 TYPE_2__* get_mount_parameters (TYPE_3__*) ;
 scalar_t__ mount_is_extrinsic (TYPE_3__*) ;
 scalar_t__ mount_is_network (TYPE_2__*) ;
 scalar_t__ streq_ptr (int ,char*) ;
 int unit_add_dependency_by_name (TYPE_4__*,int ,char const*,int,int ) ;
 int unit_add_two_dependencies_by_name (TYPE_4__*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int mount_add_default_dependencies(Mount *m) {
        const char *after, *before;
        UnitDependencyMask mask;
        MountParameters *p;
        bool nofail;
        int r;

        assert(m);

        if (!UNIT(m)->default_dependencies)
                return 0;




        if (mount_is_extrinsic(m))
                return 0;

        p = get_mount_parameters(m);
        if (!p)
                return 0;

        mask = m->from_fragment ? UNIT_DEPENDENCY_FILE : UNIT_DEPENDENCY_MOUNTINFO_DEFAULT;
        nofail = m->from_fragment ? fstab_test_yes_no_option(m->parameters_fragment.options, "nofail\0" "fail\0") : 0;

        if (mount_is_network(p)) {






                r = unit_add_dependency_by_name(UNIT(m), UNIT_AFTER, SPECIAL_NETWORK_TARGET, 1, mask);
                if (r < 0)
                        return r;
                r = unit_add_two_dependencies_by_name(UNIT(m), UNIT_WANTS, UNIT_AFTER, SPECIAL_NETWORK_ONLINE_TARGET, 1, mask);
                if (r < 0)
                        return r;

                after = SPECIAL_REMOTE_FS_PRE_TARGET;
                before = SPECIAL_REMOTE_FS_TARGET;
        } else {
                after = SPECIAL_LOCAL_FS_PRE_TARGET;
                before = SPECIAL_LOCAL_FS_TARGET;
        }

        if (!nofail) {
                r = unit_add_dependency_by_name(UNIT(m), UNIT_BEFORE, before, 1, mask);
                if (r < 0)
                        return r;
        }

        r = unit_add_dependency_by_name(UNIT(m), UNIT_AFTER, after, 1, mask);
        if (r < 0)
                return r;

        r = unit_add_two_dependencies_by_name(UNIT(m), UNIT_BEFORE, UNIT_CONFLICTS, SPECIAL_UMOUNT_TARGET, 1, mask);
        if (r < 0)
                return r;


        if (streq_ptr(p->fstype, "tmpfs")) {
                r = unit_add_dependency_by_name(UNIT(m), UNIT_AFTER, SPECIAL_SWAP_TARGET, 1, mask);
                if (r < 0)
                        return r;
        }

        return 0;
}
