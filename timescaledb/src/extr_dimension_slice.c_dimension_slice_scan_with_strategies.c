
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tuple_found_func ;
typedef scalar_t__ int64 ;
typedef int int32 ;
typedef scalar_t__ StrategyNumber ;
typedef int ScanKeyData ;
typedef int Oid ;


 int AccessShareLock ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start ;
 int Assert (int ) ;
 scalar_t__ BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ;
 int F_INT4EQ ;
 int INT8OID ;
 int INTEGER_BTREE_FAM_OID ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (scalar_t__) ;
 scalar_t__ InvalidStrategy ;
 int OidIsValid (int ) ;
 scalar_t__ PG_INT64_MAX ;
 scalar_t__ REMAP_LAST_COORDINATE (scalar_t__) ;
 int ScanKeyInit (int *,int ,scalar_t__,int ,int ) ;
 int dimension_slice_scan_limit_internal (int ,int *,int,int ,void*,int,int ,int ) ;
 int get_opcode (int ) ;
 int get_opfamily_member (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void
dimension_slice_scan_with_strategies(int32 dimension_id, StrategyNumber start_strategy,
          int64 start_value, StrategyNumber end_strategy,
          int64 end_value, void *data, tuple_found_func tuple_found,
          int limit)
{
 ScanKeyData scankey[3];
 int nkeys = 1;





 ScanKeyInit(&scankey[0],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(dimension_id));
 if (start_strategy != InvalidStrategy)
 {
  Oid opno = get_opfamily_member(INTEGER_BTREE_FAM_OID, INT8OID, INT8OID, start_strategy);
  Oid proc = get_opcode(opno);

  Assert(OidIsValid(proc));

  ScanKeyInit(&scankey[nkeys++],
     Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start,
     start_strategy,
     proc,
     Int64GetDatum(start_value));
 }
 if (end_strategy != InvalidStrategy)
 {
  Oid opno = get_opfamily_member(INTEGER_BTREE_FAM_OID, INT8OID, INT8OID, end_strategy);
  Oid proc = get_opcode(opno);

  Assert(OidIsValid(proc));





  if (end_value != PG_INT64_MAX)
  {
   end_value++;





   end_value = REMAP_LAST_COORDINATE(end_value);
  }
  else
  {




   end_value = PG_INT64_MAX;
  }

  ScanKeyInit(&scankey[nkeys++],
     Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end,
     end_strategy,
     proc,
     Int64GetDatum(end_value));
 }

 dimension_slice_scan_limit_internal(DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
          scankey,
          nkeys,
          tuple_found,
          data,
          limit,
          AccessShareLock,
          CurrentMemoryContext);
}
