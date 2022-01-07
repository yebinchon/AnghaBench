
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_1__ InternalTimeRange ;


 int Assert (int) ;

__attribute__((used)) static bool
ranges_overlap(InternalTimeRange invalidation_range, InternalTimeRange new_materialization_range)
{
 Assert(invalidation_range.start <= invalidation_range.end);
 Assert(new_materialization_range.start <= new_materialization_range.end);
 return !(invalidation_range.end < new_materialization_range.start ||
    new_materialization_range.end < invalidation_range.start);
}
