
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleInfo ;
struct TYPE_2__ {int hypertable; } ;
typedef int ScanTupleResult ;
typedef TYPE_1__ HypertableCacheEntry ;


 int SCAN_DONE ;
 int ts_hypertable_from_tupleinfo (int *) ;

__attribute__((used)) static ScanTupleResult
hypertable_tuple_found(TupleInfo *ti, void *data)
{
 HypertableCacheEntry *entry = data;

 entry->hypertable = ts_hypertable_from_tupleinfo(ti);
 return SCAN_DONE;
}
