
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int latency_events; } ;


 int dictCreate (int *,int *) ;
 int latencyTimeSeriesDictType ;
 TYPE_1__ server ;

void latencyMonitorInit(void) {
    server.latency_events = dictCreate(&latencyTimeSeriesDictType,((void*)0));
}
