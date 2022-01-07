
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int options; } ;
struct TYPE_5__ {TYPE_1__ parameters_proc_self_mountinfo; scalar_t__ from_fragment; } ;
typedef TYPE_1__ MountParameters ;
typedef TYPE_2__ Mount ;


 int fstab_test_option (int ,char*) ;

__attribute__((used)) static bool mount_is_bound_to_device(const Mount *m) {
        const MountParameters *p;

        if (m->from_fragment)
                return 1;

        p = &m->parameters_proc_self_mountinfo;
        return fstab_test_option(p->options, "x-systemd.device-bound\0");
}
