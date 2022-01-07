
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;


 scalar_t__ USEC_INFINITY ;
 int open_watchdog () ;
 int update_timeout () ;
 scalar_t__ watchdog_fd ;
 scalar_t__ watchdog_timeout ;

int watchdog_set_timeout(usec_t *usec) {
        int r;

        watchdog_timeout = *usec;



        if (watchdog_fd < 0 && watchdog_timeout == USEC_INFINITY)
                return 0;

        if (watchdog_fd < 0)
                r = open_watchdog();
        else
                r = update_timeout();

        *usec = watchdog_timeout;

        return r;
}
