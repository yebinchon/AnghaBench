
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGROUP_UNIFIED_SYSTEMD ;
 int cg_unified_cached (int) ;
 int unified_systemd_v232 ;

int cg_hybrid_unified(void) {
        int r;

        r = cg_unified_cached(0);
        if (r < 0)
                return r;

        return r == CGROUP_UNIFIED_SYSTEMD && !unified_systemd_v232;
}
