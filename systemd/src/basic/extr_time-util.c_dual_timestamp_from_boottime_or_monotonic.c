
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {void* monotonic; void* realtime; } ;
typedef TYPE_1__ dual_timestamp ;


 scalar_t__ USEC_INFINITY ;
 int clock_boottime_or_monotonic () ;
 int dual_timestamp_get (TYPE_1__*) ;
 scalar_t__ now (int ) ;
 void* usec_sub_signed (void*,scalar_t__) ;

dual_timestamp* dual_timestamp_from_boottime_or_monotonic(dual_timestamp *ts, usec_t u) {
        int64_t delta;

        if (u == USEC_INFINITY) {
                ts->realtime = ts->monotonic = USEC_INFINITY;
                return ts;
        }

        dual_timestamp_get(ts);
        delta = (int64_t) now(clock_boottime_or_monotonic()) - (int64_t) u;
        ts->realtime = usec_sub_signed(ts->realtime, delta);
        ts->monotonic = usec_sub_signed(ts->monotonic, delta);

        return ts;
}
