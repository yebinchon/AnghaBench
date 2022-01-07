
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleInfo ;
typedef int ScanTupleResult ;
typedef int Hypertable ;


 int SCAN_DONE ;
 int * ts_hypertable_from_tupleinfo (int *) ;

__attribute__((used)) static ScanTupleResult
hypertable_tuple_found(TupleInfo *ti, void *data)
{
 Hypertable **entry = data;

 *entry = ts_hypertable_from_tupleinfo(ti);
 return SCAN_DONE;
}
