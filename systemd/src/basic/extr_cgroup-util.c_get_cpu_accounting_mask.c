
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int release; } ;
typedef scalar_t__ CGroupMask ;


 scalar_t__ CGROUP_MASK_CPU ;
 scalar_t__ CGROUP_MASK_CPUACCT ;
 int assert_se (int) ;
 scalar_t__ cg_all_unified () ;
 scalar_t__ str_verscmp (int ,char*) ;
 scalar_t__ uname (struct utsname*) ;

CGroupMask get_cpu_accounting_mask(void) {
        static CGroupMask needed_mask = (CGroupMask) -1;
        if (needed_mask == (CGroupMask) -1) {
                if (cg_all_unified()) {
                        struct utsname u;
                        assert_se(uname(&u) >= 0);

                        if (str_verscmp(u.release, "4.15") < 0)
                                needed_mask = CGROUP_MASK_CPU;
                        else
                                needed_mask = 0;
                } else
                        needed_mask = CGROUP_MASK_CPUACCT;
        }

        return needed_mask;
}
