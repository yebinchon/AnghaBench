
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* end; void* start; int type; } ;
typedef TYPE_1__ TimeRange ;
struct TYPE_6__ {int type; int end; int start; } ;
typedef TYPE_2__ InternalTimeRange ;


 void* internal_to_time_value_or_infinite (int ,int ,int *) ;

__attribute__((used)) static TimeRange
internal_time_range_to_time_range(InternalTimeRange internal)
{
 TimeRange range;
 range.type = internal.type;

 range.start = internal_to_time_value_or_infinite(internal.start, internal.type, ((void*)0));
 range.end = internal_to_time_value_or_infinite(internal.end, internal.type, ((void*)0));

 return range;
}
