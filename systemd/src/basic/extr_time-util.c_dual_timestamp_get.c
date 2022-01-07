
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* monotonic; void* realtime; } ;
typedef TYPE_1__ dual_timestamp ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int assert (TYPE_1__*) ;
 void* now (int ) ;

dual_timestamp* dual_timestamp_get(dual_timestamp *ts) {
        assert(ts);

        ts->realtime = now(CLOCK_REALTIME);
        ts->monotonic = now(CLOCK_MONOTONIC);

        return ts;
}
