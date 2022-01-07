
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int LOG_ERR ;
 int MS_BIND ;
 int MS_NODEV ;
 int MS_NOEXEC ;
 int MS_NOSUID ;
 int MS_RDONLY ;
 int MS_REMOUNT ;
 int SYSTEMD_CGROUP_CONTROLLER_HYBRID ;
 int SYSTEMD_CGROUP_CONTROLLER_LEGACY ;
 int log_error_errno (int,char*,char const*) ;
 int mkdir_p (char const*,int) ;
 int mount_verbose (int ,char*,char const*,char const*,int,char const*) ;
 int path_is_mount_point (char const*,char const*,int ) ;
 int strempty (char const*) ;
 scalar_t__ streq (char const*,int ) ;
 char* strjoina (int ,char*,char const*) ;

__attribute__((used)) static int mount_legacy_cgroup_hierarchy(
                const char *dest,
                const char *controller,
                const char *hierarchy,
                bool read_only) {

        const char *to, *fstype, *opts;
        int r;

        to = strjoina(strempty(dest), "/sys/fs/cgroup/", hierarchy);

        r = path_is_mount_point(to, dest, 0);
        if (r < 0 && r != -ENOENT)
                return log_error_errno(r, "Failed to determine if %s is mounted already: %m", to);
        if (r > 0)
                return 0;

        (void) mkdir_p(to, 0755);



        if (streq(controller, SYSTEMD_CGROUP_CONTROLLER_HYBRID)) {
                fstype = "cgroup2";
                opts = ((void*)0);
        } else if (streq(controller, SYSTEMD_CGROUP_CONTROLLER_LEGACY)) {
                fstype = "cgroup";
                opts = "none,name=systemd,xattr";
        } else {
                fstype = "cgroup";
                opts = controller;
        }

        r = mount_verbose(LOG_ERR, "cgroup", to, fstype, MS_NOSUID|MS_NOEXEC|MS_NODEV, opts);
        if (r < 0)
                return r;


        if (read_only) {
                r = mount_verbose(LOG_ERR, ((void*)0), to, ((void*)0),
                                  MS_BIND|MS_REMOUNT|MS_NOSUID|MS_NOEXEC|MS_NODEV|MS_RDONLY, ((void*)0));
                if (r < 0)
                        return r;
        }

        return 1;
}
