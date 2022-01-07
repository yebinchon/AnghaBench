
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_3__ {int watchdog_usec; int watchdog_timestamp; } ;
typedef TYPE_1__ Uploader ;


 int CLOCK_MONOTONIC ;
 int log_debug (char*) ;
 int now (int ) ;
 int sd_notify (int,char*) ;
 int usec_sub_unsigned (int,int) ;

__attribute__((used)) static void check_update_watchdog(Uploader *u) {
        usec_t after;
        usec_t elapsed_time;

        if (u->watchdog_usec <= 0)
                return;

        after = now(CLOCK_MONOTONIC);
        elapsed_time = usec_sub_unsigned(after, u->watchdog_timestamp);
        if (elapsed_time > u->watchdog_usec / 2) {
                log_debug("Update watchdog timer");
                sd_notify(0, "WATCHDOG=1");
                u->watchdog_timestamp = after;
        }
}
