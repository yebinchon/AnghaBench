
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntent {int mnt_type; int mnt_opts; } ;


 int assert (struct mntent*) ;
 scalar_t__ fstab_test_option (int ,char*) ;
 scalar_t__ fstype_is_network (int ) ;

__attribute__((used)) static bool mount_is_network(struct mntent *me) {
        assert(me);

        return fstab_test_option(me->mnt_opts, "_netdev\0") ||
               fstype_is_network(me->mnt_type);
}
