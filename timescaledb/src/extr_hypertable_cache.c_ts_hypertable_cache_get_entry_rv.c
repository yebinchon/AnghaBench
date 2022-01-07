
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeVar ;
typedef int Hypertable ;
typedef int Cache ;


 int NoLock ;
 int RangeVarGetRelid (int *,int ,int) ;
 int * ts_hypertable_cache_get_entry (int *,int ) ;

Hypertable *
ts_hypertable_cache_get_entry_rv(Cache *cache, RangeVar *rv)
{
 return ts_hypertable_cache_get_entry(cache, RangeVarGetRelid(rv, NoLock, 1));
}
