
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_3__ {int month; int day; scalar_t__ time; } ;
typedef TYPE_1__ Interval ;


 int DAYS_PER_MONTH ;
 int USECS_PER_DAY ;

__attribute__((used)) static inline int64
interval_to_usec(Interval *interval)
{
 return (interval->month * DAYS_PER_MONTH * USECS_PER_DAY) + (interval->day * USECS_PER_DAY) +
     interval->time;
}
