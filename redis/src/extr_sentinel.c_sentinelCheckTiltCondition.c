
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
struct TYPE_2__ {scalar_t__ previous_time; int tilt; scalar_t__ tilt_start_time; } ;


 int LL_WARNING ;
 scalar_t__ SENTINEL_TILT_TRIGGER ;
 scalar_t__ mstime () ;
 TYPE_1__ sentinel ;
 int sentinelEvent (int ,char*,int *,char*) ;

void sentinelCheckTiltCondition(void) {
    mstime_t now = mstime();
    mstime_t delta = now - sentinel.previous_time;

    if (delta < 0 || delta > SENTINEL_TILT_TRIGGER) {
        sentinel.tilt = 1;
        sentinel.tilt_start_time = mstime();
        sentinelEvent(LL_WARNING,"+tilt",((void*)0),"#tilt mode entered");
    }
    sentinel.previous_time = mstime();
}
