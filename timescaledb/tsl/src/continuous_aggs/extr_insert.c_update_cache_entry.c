
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_3__ {scalar_t__ lowest_modified_value; scalar_t__ greatest_modified_value; } ;
typedef TYPE_1__ ContinuousAggsCacheInvalEntry ;



__attribute__((used)) static inline void
update_cache_entry(ContinuousAggsCacheInvalEntry *cache_entry, int64 timeval)
{
 if (timeval < cache_entry->lowest_modified_value)
  cache_entry->lowest_modified_value = timeval;
 if (timeval > cache_entry->greatest_modified_value)
  cache_entry->greatest_modified_value = timeval;
}
