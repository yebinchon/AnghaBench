
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_4__ {scalar_t__ lowest_modified_value; int hypertable_relid; } ;
typedef TYPE_1__ ContinuousAggsCacheInvalEntry ;


 scalar_t__ IsolationUsesXactSnapshot () ;
 int append_invalidation_entry (TYPE_1__*) ;
 scalar_t__ get_lowest_invalidated_time_for_hypertable (int ) ;

__attribute__((used)) static void
cache_inval_entry_write(ContinuousAggsCacheInvalEntry *entry)
{
 int64 liv;







 if (IsolationUsesXactSnapshot())
 {
  append_invalidation_entry(entry);
  return;
 }

 liv = get_lowest_invalidated_time_for_hypertable(entry->hypertable_relid);
 if (entry->lowest_modified_value < liv)
  append_invalidation_entry(entry);
}
