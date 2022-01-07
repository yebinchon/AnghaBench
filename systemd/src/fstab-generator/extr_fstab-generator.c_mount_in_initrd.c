
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntent {int mnt_dir; int mnt_opts; } ;


 int assert (struct mntent*) ;
 scalar_t__ fstab_test_option (int ,char*) ;
 scalar_t__ streq (int ,char*) ;

__attribute__((used)) static bool mount_in_initrd(struct mntent *me) {
        assert(me);

        return fstab_test_option(me->mnt_opts, "x-initrd.mount\0") ||
               streq(me->mnt_dir, "/usr");
}
