
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int time; } ;
struct TYPE_6__ {TYPE_2__ max_runtime; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
typedef TYPE_2__ Interval ;
typedef TYPE_3__ BgwJob ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int IntervalPGetDatum (TYPE_2__*) ;
 int interval_gt ;

bool
ts_bgw_job_has_timeout(BgwJob *job)
{
 Interval zero_val = {
  .time = 0,
 };

 return DatumGetBool(DirectFunctionCall2(interval_gt,
           IntervalPGetDatum(&job->fd.max_runtime),
           IntervalPGetDatum(&zero_val)));
}
