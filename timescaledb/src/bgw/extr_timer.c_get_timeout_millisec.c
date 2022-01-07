
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long int64 ;
typedef int TimestampTz ;


 int GetCurrentTimestamp () ;
 long MILLISECS_PER_SEC ;
 long PG_INT64_MAX ;
 scalar_t__ TIMESTAMP_IS_NOBEGIN (int ) ;
 scalar_t__ TIMESTAMP_IS_NOEND (int ) ;
 int TimestampDifference (int ,int ,long*,int*) ;
 long USECS_PER_MILLISEC ;

__attribute__((used)) static int64
get_timeout_millisec(TimestampTz by_time)
{
 long timeout_sec = 0;
 int timeout_usec = 0;

 if (TIMESTAMP_IS_NOBEGIN(by_time))
  return 0;

 if (TIMESTAMP_IS_NOEND(by_time))
  return PG_INT64_MAX;

 TimestampDifference(GetCurrentTimestamp(), by_time, &timeout_sec, &timeout_usec);

 if (timeout_sec < 0 || timeout_usec < 0)
  return 0;

 return (int64)(timeout_sec * MILLISECS_PER_SEC + ((int64) timeout_usec) / USECS_PER_MILLISEC);
}
