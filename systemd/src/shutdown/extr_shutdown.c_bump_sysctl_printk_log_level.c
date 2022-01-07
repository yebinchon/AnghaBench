
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_debug_errno (int,char*,int) ;
 int read_current_sysctl_printk_log_level () ;
 int sysctl_writef (char*,char*,int) ;

__attribute__((used)) static void bump_sysctl_printk_log_level(int min_level) {
        int current_lvl, r;



        current_lvl = read_current_sysctl_printk_log_level();
        if (current_lvl < 0 || current_lvl >= min_level + 1)
                return;

        r = sysctl_writef("kernel/printk", "%i", min_level + 1);
        if (r < 0)
                log_debug_errno(r, "Failed to bump kernel.printk to %i: %m", min_level + 1);
}
