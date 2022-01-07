
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clockid_t ;


 int CLOCK_BOOTTIME ;
 int CLOCK_MONOTONIC ;
 scalar_t__ clock_boottime_supported () ;

clockid_t clock_boottime_or_monotonic(void) {
        if (clock_boottime_supported())
                return CLOCK_BOOTTIME;
        else
                return CLOCK_MONOTONIC;
}
