
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; int type; } ;
typedef TYPE_1__ InternalTimeRange ;


 scalar_t__ PG_INT64_MAX ;
 void* ts_time_bucket_by_type (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
time_bucket_range(InternalTimeRange *range, int64 bucket_width)
{
 range->start = ts_time_bucket_by_type(bucket_width, range->start, range->type);
 range->end = ts_time_bucket_by_type(bucket_width, range->end, range->type);

 if (range->end < PG_INT64_MAX - bucket_width)
  range->end += bucket_width;

 if (range->start > range->end)
  range->start = range->end;
}
