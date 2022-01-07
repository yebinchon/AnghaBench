
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleInfo ;
typedef int ScanTupleResult ;
typedef int List ;


 int SCAN_CONTINUE ;
 int * lappend (int *,int ) ;
 int ts_hypertable_from_tupleinfo (int *) ;

__attribute__((used)) static ScanTupleResult
hypertable_tuple_append(TupleInfo *ti, void *data)
{
 List **hypertables = data;

 *hypertables = lappend(*hypertables, ts_hypertable_from_tupleinfo(ti));

 return SCAN_CONTINUE;
}
