
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGROUP_UNIFIED_ALL ;
 int CGROUP_UNIFIED_NONE ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 int cg_unified_cached (int) ;
 int streq_ptr (char const*,int ) ;

int cg_unified_controller(const char *controller) {
        int r;

        r = cg_unified_cached(0);
        if (r < 0)
                return r;

        if (r == CGROUP_UNIFIED_NONE)
                return 0;

        if (r >= CGROUP_UNIFIED_ALL)
                return 1;

        return streq_ptr(controller, SYSTEMD_CGROUP_CONTROLLER);
}
