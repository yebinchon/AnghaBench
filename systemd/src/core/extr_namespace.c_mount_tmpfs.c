
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ MountEntry ;


 int assert (TYPE_1__ const*) ;
 int errno ;
 int log_debug_errno (int ,char*,int ) ;
 int mkdir_p_label (int ,int) ;
 scalar_t__ mount (char*,int ,char*,int ,int ) ;
 int mount_entry_options (TYPE_1__ const*) ;
 int mount_entry_path (TYPE_1__ const*) ;
 int umount_recursive (int ,int ) ;

__attribute__((used)) static int mount_tmpfs(const MountEntry *m) {
        assert(m);



        (void) mkdir_p_label(mount_entry_path(m), 0755);
        (void) umount_recursive(mount_entry_path(m), 0);

        if (mount("tmpfs", mount_entry_path(m), "tmpfs", m->flags, mount_entry_options(m)) < 0)
                return log_debug_errno(errno, "Failed to mount %s: %m", mount_entry_path(m));

        return 1;
}
