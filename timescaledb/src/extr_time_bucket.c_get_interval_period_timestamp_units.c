
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_3__ {scalar_t__ month; scalar_t__ time; int day; } ;
typedef TYPE_1__ Interval ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int SECS_PER_DAY ;
 int USECS_PER_DAY ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ trunc (scalar_t__) ;

__attribute__((used)) static inline int64
get_interval_period_timestamp_units(Interval *interval)
{
 if (interval->month != 0)
 {
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("interval defined in terms of month, year, century etc. not supported")));
 }



 if (interval->time != trunc(interval->time))
 {
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("interval must not have sub-second precision")));
 }
 return interval->time + (interval->day * SECS_PER_DAY);

}
