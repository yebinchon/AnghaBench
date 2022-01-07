
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* boottime; void* monotonic; void* realtime; } ;
typedef TYPE_1__ triple_timestamp ;


 int CLOCK_BOOTTIME ;
 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 void* USEC_INFINITY ;
 int assert (TYPE_1__*) ;
 scalar_t__ clock_boottime_supported () ;
 void* now (int ) ;

triple_timestamp* triple_timestamp_get(triple_timestamp *ts) {
        assert(ts);

        ts->realtime = now(CLOCK_REALTIME);
        ts->monotonic = now(CLOCK_MONOTONIC);
        ts->boottime = clock_boottime_supported() ? now(CLOCK_BOOTTIME) : USEC_INFINITY;

        return ts;
}
