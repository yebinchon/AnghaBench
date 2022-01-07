
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int options; scalar_t__ fstype; } ;
typedef TYPE_1__ MountParameters ;


 int assert (TYPE_1__ const*) ;
 int fstab_test_option (int ,char*) ;
 scalar_t__ fstype_is_network (scalar_t__) ;
 scalar_t__ mount_is_bind (TYPE_1__ const*) ;

__attribute__((used)) static bool mount_needs_quota(const MountParameters *p) {
        assert(p);



        if (p->fstype && fstype_is_network(p->fstype))
                return 0;

        if (mount_is_bind(p))
                return 0;

        return fstab_test_option(p->options,
                                 "usrquota\0" "grpquota\0" "quota\0" "usrjquota\0" "grpjquota\0");
}
