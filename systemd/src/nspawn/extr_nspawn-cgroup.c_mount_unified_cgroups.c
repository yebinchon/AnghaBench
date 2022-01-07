
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_SYMLINK_FOLLOW ;
 int EINVAL ;
 int ENOENT ;
 int F_OK ;
 int LOG_ERR ;
 int MS_NODEV ;
 int MS_NOEXEC ;
 int MS_NOSUID ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ access (char const*,int ) ;
 int assert (char const*) ;
 int errno ;
 int log_error_errno (int,char*,char const*) ;
 int mkdir_p (char const*,int) ;
 int mount_verbose (int ,char*,char const*,char*,int,int *) ;
 int path_is_mount_point (char const*,char const*,int ) ;
 char* prefix_roota (char const*,char*) ;

__attribute__((used)) static int mount_unified_cgroups(const char *dest) {
        const char *p;
        int r;

        assert(dest);

        p = prefix_roota(dest, "/sys/fs/cgroup");

        (void) mkdir_p(p, 0755);

        r = path_is_mount_point(p, dest, AT_SYMLINK_FOLLOW);
        if (r < 0)
                return log_error_errno(r, "Failed to determine if %s is mounted already: %m", p);
        if (r > 0) {
                p = prefix_roota(dest, "/sys/fs/cgroup/cgroup.procs");
                if (access(p, F_OK) >= 0)
                        return 0;
                if (errno != ENOENT)
                        return log_error_errno(errno, "Failed to determine if mount point %s contains the unified cgroup hierarchy: %m", p);

                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "%s is already mounted but not a unified cgroup hierarchy. Refusing.", p);
        }

        return mount_verbose(LOG_ERR, "cgroup", p, "cgroup2", MS_NOSUID|MS_NOEXEC|MS_NODEV, ((void*)0));
}
