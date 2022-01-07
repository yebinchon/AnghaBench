
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGROUP_UNIFIED_ALL ;
 int cg_unified_cached (int) ;

int cg_all_unified(void) {
        int r;

        r = cg_unified_cached(0);
        if (r < 0)
                return r;

        return r >= CGROUP_UNIFIED_ALL;
}
