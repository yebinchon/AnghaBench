
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
struct TYPE_2__ {scalar_t__ latency_monitor_threshold; } ;


 int latencyAddSample (char const*,scalar_t__) ;
 TYPE_1__ server ;

void RM_LatencyAddSample(const char *event, mstime_t latency) {
    if (latency >= server.latency_monitor_threshold)
        latencyAddSample(event, latency);
}
