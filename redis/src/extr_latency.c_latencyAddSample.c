
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct latencyTimeSeries {int idx; scalar_t__ max; TYPE_2__* samples; } ;
typedef scalar_t__ mstime_t ;
struct TYPE_4__ {scalar_t__ time; scalar_t__ latency; } ;
struct TYPE_3__ {int latency_events; } ;


 int LATENCY_TS_LEN ;
 int dictAdd (int ,int ,struct latencyTimeSeries*) ;
 struct latencyTimeSeries* dictFetchValue (int ,char const*) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_1__ server ;
 scalar_t__ time (int *) ;
 struct latencyTimeSeries* zmalloc (int) ;
 int zstrdup (char const*) ;

void latencyAddSample(const char *event, mstime_t latency) {
    struct latencyTimeSeries *ts = dictFetchValue(server.latency_events,event);
    time_t now = time(((void*)0));
    int prev;


    if (ts == ((void*)0)) {
        ts = zmalloc(sizeof(*ts));
        ts->idx = 0;
        ts->max = 0;
        memset(ts->samples,0,sizeof(ts->samples));
        dictAdd(server.latency_events,zstrdup(event),ts);
    }

    if (latency > ts->max) ts->max = latency;



    prev = (ts->idx + LATENCY_TS_LEN - 1) % LATENCY_TS_LEN;
    if (ts->samples[prev].time == now) {
        if (latency > ts->samples[prev].latency)
            ts->samples[prev].latency = latency;
        return;
    }

    ts->samples[ts->idx].time = time(((void*)0));
    ts->samples[ts->idx].latency = latency;

    ts->idx++;
    if (ts->idx == LATENCY_TS_LEN) ts->idx = 0;
}
