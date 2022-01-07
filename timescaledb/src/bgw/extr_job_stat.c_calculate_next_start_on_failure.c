
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int float8 ;
typedef int TimestampTz ;
struct TYPE_4__ {int schedule_interval; int retry_period; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef int Datum ;
typedef TYPE_2__ BgwJob ;


 scalar_t__ DatumGetInt32 (int ) ;
 int DatumGetTimestampTz (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int Float8GetDatum (int) ;
 int IntervalPGetDatum (int *) ;
 int MAX_INTERVALS_BACKOFF ;
 int TimestampTzGetDatum (int ) ;
 int calculate_jitter_percent () ;
 int interval_cmp ;
 int interval_mul ;
 int timestamptz_pl_interval ;

__attribute__((used)) static TimestampTz
calculate_next_start_on_failure(TimestampTz last_finish, int consecutive_failures, BgwJob *job)
{
 float8 jitter = calculate_jitter_percent();

 float8 multiplier = 1 << (consecutive_failures - 1);


 Datum ival = DirectFunctionCall2(interval_mul,
          IntervalPGetDatum(&job->fd.retry_period),
          Float8GetDatum(multiplier));


 Datum ival_max = DirectFunctionCall2(interval_mul,
           IntervalPGetDatum(&job->fd.schedule_interval),
           Float8GetDatum(MAX_INTERVALS_BACKOFF));

 if (DatumGetInt32(DirectFunctionCall2(interval_cmp, ival, ival_max)) > 0)
  ival = ival_max;


 ival = DirectFunctionCall2(interval_mul, ival, Float8GetDatum(1.0 + jitter));

 return DatumGetTimestampTz(
  DirectFunctionCall2(timestamptz_pl_interval, TimestampTzGetDatum(last_finish), ival));
}
