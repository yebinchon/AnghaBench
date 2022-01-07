
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLONE_NEWIPC ;
 int CLONE_NEWPID ;
 int CLONE_NEWUTS ;
 int ENXIO ;
 int SETTING_USE_CGNS ;
 char const* arg_container_service_name ;
 int arg_settings_mask ;
 int arg_use_cgns ;
 int cg_ns_supported () ;
 int detect_unified_cgroup_hierarchy_from_environment () ;
 char* getenv (char*) ;
 int getenv_bool (char*) ;
 int log_error_errno (int,char*) ;
 int parse_mount_settings_env () ;
 int parse_share_ns_env (char*,int) ;

__attribute__((used)) static int parse_environment(void) {
        const char *e;
        int r;

        r = parse_share_ns_env("SYSTEMD_NSPAWN_SHARE_NS_IPC", CLONE_NEWIPC);
        if (r < 0)
                return r;
        r = parse_share_ns_env("SYSTEMD_NSPAWN_SHARE_NS_PID", CLONE_NEWPID);
        if (r < 0)
                return r;
        r = parse_share_ns_env("SYSTEMD_NSPAWN_SHARE_NS_UTS", CLONE_NEWUTS);
        if (r < 0)
                return r;
        r = parse_share_ns_env("SYSTEMD_NSPAWN_SHARE_SYSTEM", CLONE_NEWIPC|CLONE_NEWPID|CLONE_NEWUTS);
        if (r < 0)
                return r;

        r = parse_mount_settings_env();
        if (r < 0)
                return r;



        if (!cg_ns_supported())
                arg_use_cgns = 0;
        else {
                r = getenv_bool("SYSTEMD_NSPAWN_USE_CGNS");
                if (r < 0) {
                        if (r != -ENXIO)
                                return log_error_errno(r, "Failed to parse $SYSTEMD_NSPAWN_USE_CGNS: %m");

                        arg_use_cgns = 1;
                } else {
                        arg_use_cgns = r > 0;
                        arg_settings_mask |= SETTING_USE_CGNS;
                }
        }

        e = getenv("SYSTEMD_NSPAWN_CONTAINER_SERVICE");
        if (e)
                arg_container_service_name = e;

        return detect_unified_cgroup_hierarchy_from_environment();
}
