
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGROUP_UNIFIED_ALL ;
 int CGROUP_UNIFIED_NONE ;
 int arg_unified_cgroup_hierarchy ;
 char* getenv (char const*) ;
 int isempty (char const*) ;
 int log_error_errno (int,char*,char const*) ;
 int parse_boolean (char const*) ;

__attribute__((used)) static int detect_unified_cgroup_hierarchy_from_environment(void) {
        const char *e, *var = "SYSTEMD_NSPAWN_UNIFIED_HIERARCHY";
        int r;



        e = getenv(var);
        if (!e) {

                var = "UNIFIED_CGROUP_HIERARCHY";
                e = getenv(var);
        }

        if (!isempty(e)) {
                r = parse_boolean(e);
                if (r < 0)
                        return log_error_errno(r, "Failed to parse $%s: %m", var);
                if (r > 0)
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_ALL;
                else
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_NONE;
        }

        return 0;
}
