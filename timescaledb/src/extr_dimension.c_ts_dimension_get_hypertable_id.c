
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;


 int AccessShareLock ;
 int Anum_dimension_id_idx_id ;
 int BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int DIMENSION_ID_IDX ;
 int F_INT4EQ ;
 int Int32GetDatum (int) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int dimension_find_hypertable_id_tuple_found ;
 int dimension_scan_internal (int *,int,int ,int*,int,int ,int ,int ) ;

int32
ts_dimension_get_hypertable_id(int32 dimension_id)
{
 int32 hypertable_id;
 ScanKeyData scankey[1];
 int ret;


 ScanKeyInit(&scankey[0],
    Anum_dimension_id_idx_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(dimension_id));

 ret = dimension_scan_internal(scankey,
          1,
          dimension_find_hypertable_id_tuple_found,
          &hypertable_id,
          1,
          DIMENSION_ID_IDX,
          AccessShareLock,
          CurrentMemoryContext);

 if (ret == 1)
  return hypertable_id;

 return -1;
}
