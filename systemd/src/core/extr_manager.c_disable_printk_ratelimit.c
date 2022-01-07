
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_debug_errno (int,char*) ;
 int sysctl_write (char*,char*) ;

void disable_printk_ratelimit(void) {





        int r;

        r = sysctl_write("kernel/printk_devkmsg", "on");
        if (r < 0)
                log_debug_errno(r, "Failed to set sysctl kernel.printk_devkmsg=on: %m");
}
