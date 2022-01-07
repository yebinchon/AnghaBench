
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int manager; } ;
struct TYPE_10__ {int where; } ;
struct TYPE_9__ {int options; } ;
typedef TYPE_1__ MountParameters ;
typedef TYPE_2__ Mount ;


 int MANAGER_IS_SYSTEM (int ) ;
 scalar_t__ PATH_IN_SET (int ,char*,char*) ;
 scalar_t__ PATH_STARTSWITH_SET (int ,char*,char*,char*,char*) ;
 TYPE_7__* UNIT (TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 scalar_t__ fstab_test_option (int ,char*) ;
 TYPE_1__* get_mount_parameters (TYPE_2__*) ;
 int in_initrd () ;

__attribute__((used)) static bool mount_is_extrinsic(Mount *m) {
        MountParameters *p;
        assert(m);





        if (!MANAGER_IS_SYSTEM(UNIT(m)->manager))
                return 1;

        if (PATH_IN_SET(m->where,
                        "/",
                        "/usr"))
                return 1;

        if (PATH_STARTSWITH_SET(m->where,
                                "/run/initramfs",
                                "/proc",
                                "/sys",
                                "/dev"))
                return 1;


        p = get_mount_parameters(m);
        if (p && fstab_test_option(p->options, "x-initrd.mount\0") && !in_initrd())
                return 1;

        return 0;
}
