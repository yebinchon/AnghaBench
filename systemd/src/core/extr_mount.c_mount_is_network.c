
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fstype; int options; } ;
typedef TYPE_1__ MountParameters ;


 int assert (TYPE_1__ const*) ;
 scalar_t__ fstab_test_option (int ,char*) ;
 scalar_t__ fstype_is_network (scalar_t__) ;

__attribute__((used)) static bool mount_is_network(const MountParameters *p) {
        assert(p);

        if (fstab_test_option(p->options, "_netdev\0"))
                return 1;

        if (p->fstype && fstype_is_network(p->fstype))
                return 1;

        return 0;
}
