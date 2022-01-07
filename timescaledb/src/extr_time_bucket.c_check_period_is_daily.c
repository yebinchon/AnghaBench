
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int SECS_PER_DAY ;
 int USECS_PER_DAY ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static inline void
check_period_is_daily(int64 period)
{



 int64 day = SECS_PER_DAY;

 if (period < day)
 {
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("interval must not have sub-day precision")));
 }
 if (period % day != 0)
 {
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("interval must be a multiple of a day")));
 }
}
