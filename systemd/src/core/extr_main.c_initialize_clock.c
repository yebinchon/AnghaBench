
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock_apply_epoch () ;
 scalar_t__ clock_is_localtime (int *) ;
 int clock_reset_timewarp () ;
 int clock_set_timezone (int*) ;
 int in_initrd () ;
 int log_error_errno (int,char*) ;
 int log_info (char*,...) ;

__attribute__((used)) static void initialize_clock(void) {
        int r;

        if (clock_is_localtime(((void*)0)) > 0) {
                int min;
                r = clock_set_timezone(&min);
                if (r < 0)
                        log_error_errno(r, "Failed to apply local time delta, ignoring: %m");
                else
                        log_info("RTC configured in localtime, applying delta of %i minutes to system time.", min);

        } else if (!in_initrd()) {
                (void) clock_reset_timewarp();
        }

        r = clock_apply_epoch();
        if (r < 0)
                log_error_errno(r, "Current system time is before build time, but cannot correct: %m");
        else if (r > 0)
                log_info("System time before build time, advancing clock.");
}
