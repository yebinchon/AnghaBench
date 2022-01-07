
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MountEntry ;


 int MS_NODEV ;
 int MS_NOEXEC ;
 int MS_NOSUID ;
 int assert (int const*) ;
 int errno ;
 int log_debug_errno (int,char*,...) ;
 int mkdir_p_label (int ,int) ;
 scalar_t__ mount (char*,int ,char*,int,int *) ;
 int mount_entry_path (int const*) ;
 int path_is_mount_point (int ,int *,int ) ;

__attribute__((used)) static int mount_procfs(const MountEntry *m) {
        int r;

        assert(m);

        (void) mkdir_p_label(mount_entry_path(m), 0755);

        r = path_is_mount_point(mount_entry_path(m), ((void*)0), 0);
        if (r < 0)
                return log_debug_errno(r, "Unable to determine whether /proc is already mounted: %m");
        if (r > 0)
                return 0;


        if (mount("proc", mount_entry_path(m), "proc", MS_NOSUID|MS_NOEXEC|MS_NODEV, ((void*)0)) < 0)
                return log_debug_errno(errno, "Failed to mount %s: %m", mount_entry_path(m));

        return 1;
}
