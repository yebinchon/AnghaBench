
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_REALTIME ;
 scalar_t__ TIME_EPOCH_USEC ;
 scalar_t__ clock_settime (int ,int ) ;
 int errno ;
 scalar_t__ now (int ) ;
 int timespec_store (struct timespec*,scalar_t__) ;

int clock_apply_epoch(void) {
        struct timespec ts;

        if (now(CLOCK_REALTIME) >= TIME_EPOCH_USEC)
                return 0;

        if (clock_settime(CLOCK_REALTIME, timespec_store(&ts, TIME_EPOCH_USEC)) < 0)
                return -errno;

        return 1;
}
