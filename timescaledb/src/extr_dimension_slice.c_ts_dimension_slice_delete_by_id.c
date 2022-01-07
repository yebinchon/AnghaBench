
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;


 int Anum_dimension_slice_id_idx_id ;
 int BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int DIMENSION_SLICE_ID_IDX ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int dimension_slice_scan_limit_internal (int ,int *,int,int ,int*,int,int ,int ) ;
 int dimension_slice_tuple_delete ;

int
ts_dimension_slice_delete_by_id(int32 dimension_slice_id, bool delete_constraints)
{
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_dimension_slice_id_idx_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(dimension_slice_id));

 return dimension_slice_scan_limit_internal(DIMENSION_SLICE_ID_IDX,
              scankey,
              1,
              dimension_slice_tuple_delete,
              &delete_constraints,
              1,
              RowExclusiveLock,
              CurrentMemoryContext);
}
