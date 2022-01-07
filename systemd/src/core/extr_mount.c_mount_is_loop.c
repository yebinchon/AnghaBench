
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int options; } ;
typedef TYPE_1__ MountParameters ;


 int assert (TYPE_1__ const*) ;
 scalar_t__ fstab_test_option (int ,char*) ;

__attribute__((used)) static bool mount_is_loop(const MountParameters *p) {
        assert(p);

        if (fstab_test_option(p->options, "loop\0"))
                return 1;

        return 0;
}
