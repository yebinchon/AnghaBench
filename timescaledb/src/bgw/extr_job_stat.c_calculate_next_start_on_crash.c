
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimestampTz ;
typedef int BgwJob ;


 int MIN_WAIT_AFTER_CRASH_MS ;
 scalar_t__ TimestampTzPlusMilliseconds (scalar_t__,int ) ;
 scalar_t__ calculate_next_start_on_failure (scalar_t__,int,int *) ;
 scalar_t__ ts_timer_get_current_timestamp () ;

__attribute__((used)) static TimestampTz
calculate_next_start_on_crash(int consecutive_crashes, BgwJob *job)
{
 TimestampTz now = ts_timer_get_current_timestamp();
 TimestampTz failure_calc = calculate_next_start_on_failure(now, consecutive_crashes, job);
 TimestampTz min_time = TimestampTzPlusMilliseconds(now, MIN_WAIT_AFTER_CRASH_MS);

 if (min_time > failure_calc)
  return min_time;
 return failure_calc;
}
