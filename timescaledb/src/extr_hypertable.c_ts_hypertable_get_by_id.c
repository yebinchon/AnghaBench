
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;
typedef int Hypertable ;


 int AccessShareLock ;
 int Anum_hypertable_pkey_idx_id ;
 int BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int F_INT4EQ ;
 int HYPERTABLE_ID_INDEX ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int hypertable_scan_limit_internal (int *,int,int ,int ,int **,int,int ,int,int ) ;
 int hypertable_tuple_found ;

Hypertable *
ts_hypertable_get_by_id(int32 hypertable_id)
{
 ScanKeyData scankey[1];
 Hypertable *ht = ((void*)0);

 ScanKeyInit(&scankey[0],
    Anum_hypertable_pkey_idx_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(hypertable_id));

 hypertable_scan_limit_internal(scankey,
           1,
           HYPERTABLE_ID_INDEX,
           hypertable_tuple_found,
           &ht,
           1,
           AccessShareLock,
           0,
           CurrentMemoryContext);
 return ht;
}
