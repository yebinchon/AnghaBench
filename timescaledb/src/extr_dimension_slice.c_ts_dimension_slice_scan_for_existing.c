
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int range_end; int range_start; int dimension_id; } ;
struct TYPE_7__ {TYPE_1__ fd; } ;
typedef int ScanKeyData ;
typedef TYPE_2__ DimensionSlice ;


 int AccessShareLock ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start ;
 int BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ;
 int F_INT4EQ ;
 int F_INT8EQ ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int dimension_slice_fill ;
 int dimension_slice_scan_limit_internal (int ,int *,int,int ,TYPE_2__**,int,int ,int ) ;

DimensionSlice *
ts_dimension_slice_scan_for_existing(DimensionSlice *slice)
{
 ScanKeyData scankey[3];

 ScanKeyInit(&scankey[0],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(slice->fd.dimension_id));
 ScanKeyInit(&scankey[1],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start,
    BTEqualStrategyNumber,
    F_INT8EQ,
    Int64GetDatum(slice->fd.range_start));
 ScanKeyInit(&scankey[2],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end,
    BTEqualStrategyNumber,
    F_INT8EQ,
    Int64GetDatum(slice->fd.range_end));

 dimension_slice_scan_limit_internal(DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
          scankey,
          3,
          dimension_slice_fill,
          &slice,
          1,
          AccessShareLock,
          CurrentMemoryContext);

 return slice;
}
