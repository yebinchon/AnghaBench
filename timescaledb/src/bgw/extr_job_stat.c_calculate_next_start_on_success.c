
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_4__ {int schedule_interval; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef TYPE_2__ BgwJob ;


 int DatumGetTimestampTz (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int IntervalPGetDatum (int *) ;
 int TimestampTzGetDatum (int ) ;
 int timestamptz_pl_interval ;

__attribute__((used)) static TimestampTz
calculate_next_start_on_success(TimestampTz last_finish, BgwJob *job)
{

 TimestampTz ts =
  DatumGetTimestampTz(DirectFunctionCall2(timestamptz_pl_interval,
            TimestampTzGetDatum(last_finish),
            IntervalPGetDatum(&job->fd.schedule_interval)));

 return ts;
}
