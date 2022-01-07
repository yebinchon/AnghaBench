
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CGROUP_UNIFIED_ALL ;
 scalar_t__ CGROUP_UNIFIED_NONE ;
 scalar_t__ CGROUP_UNIFIED_SYSTEMD ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 scalar_t__ arg_unified_cgroup_hierarchy ;
 int cg_all_unified () ;
 scalar_t__ cg_unified_controller (int ) ;
 int log_debug (char*,char*) ;
 int log_error_errno (int,char*) ;
 int systemd_installation_has_version (char const*,int) ;

__attribute__((used)) static int detect_unified_cgroup_hierarchy_from_image(const char *directory) {
        int r;



        r = cg_all_unified();
        if (r < 0)
                return log_error_errno(r, "Failed to determine whether we are in all unified mode.");
        if (r > 0) {


                r = systemd_installation_has_version(directory, 230);
                if (r < 0)
                        return log_error_errno(r, "Failed to determine systemd version in container: %m");
                if (r > 0)
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_ALL;
                else
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_NONE;
        } else if (cg_unified_controller(SYSTEMD_CGROUP_CONTROLLER) > 0) {

                r = systemd_installation_has_version(directory, 233);
                if (r < 0)
                        return log_error_errno(r, "Failed to determine systemd version in container: %m");
                if (r > 0)
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_SYSTEMD;
                else
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_NONE;
        } else
                arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_NONE;

        log_debug("Using %s hierarchy for container.",
                  arg_unified_cgroup_hierarchy == CGROUP_UNIFIED_NONE ? "legacy" :
                  arg_unified_cgroup_hierarchy == CGROUP_UNIFIED_SYSTEMD ? "hybrid" : "unified");

        return 0;
}
