
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {scalar_t__ realtime; scalar_t__ monotonic; } ;
typedef TYPE_1__ dual_timestamp ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 scalar_t__ USEC_INFINITY ;
 int assert (TYPE_1__*) ;
 scalar_t__ now (int ) ;
 scalar_t__ usec_sub_signed (scalar_t__,scalar_t__) ;

dual_timestamp* dual_timestamp_from_monotonic(dual_timestamp *ts, usec_t u) {
        int64_t delta;
        assert(ts);

        if (u == USEC_INFINITY) {
                ts->realtime = ts->monotonic = USEC_INFINITY;
                return ts;
        }

        ts->monotonic = u;
        delta = (int64_t) now(CLOCK_MONOTONIC) - (int64_t) u;
        ts->realtime = usec_sub_signed(now(CLOCK_REALTIME), delta);

        return ts;
}
