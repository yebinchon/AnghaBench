
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_3__ {int month; int day; scalar_t__ time; } ;
typedef TYPE_1__ Interval ;


 int DAYS_PER_MONTH ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int USECS_PER_DAY ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static inline int64
interval_to_usec(Interval *interval)
{
 if (interval == ((void*)0))
  ereport(ERROR, (errcode(ERRCODE_INTERNAL_ERROR), errmsg("interval cannot be NULL")));
 return (interval->month * DAYS_PER_MONTH * USECS_PER_DAY) + (interval->day * USECS_PER_DAY) +
     interval->time;
}
