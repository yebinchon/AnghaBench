
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
typedef int int16 ;
struct TYPE_5__ {int num_dimensions; int dimensions; } ;
typedef int ScanKeyData ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_1__ Hyperspace ;
typedef int Dimension ;


 int AccessShareLock ;
 int Anum_dimension_hypertable_id_column_name_idx_hypertable_id ;
 int BTEqualStrategyNumber ;
 int DIMENSION_HYPERTABLE_ID_COLUMN_NAME_IDX ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int cmp_dimension_id ;
 int dimension_scan_internal (int *,int,int ,TYPE_1__*,int ,int ,int ,int ) ;
 int dimension_tuple_found ;
 TYPE_1__* hyperspace_create (int ,int ,int ,int ) ;
 int qsort (int ,int ,int,int ) ;

Hyperspace *
ts_dimension_scan(int32 hypertable_id, Oid main_table_relid, int16 num_dimensions,
      MemoryContext mctx)
{
 Hyperspace *space = hyperspace_create(hypertable_id, main_table_relid, num_dimensions, mctx);
 ScanKeyData scankey[1];


 ScanKeyInit(&scankey[0],
    Anum_dimension_hypertable_id_column_name_idx_hypertable_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(hypertable_id));

 dimension_scan_internal(scankey,
       1,
       dimension_tuple_found,
       space,
       num_dimensions,
       DIMENSION_HYPERTABLE_ID_COLUMN_NAME_IDX,
       AccessShareLock,
       mctx);


 qsort(space->dimensions, space->num_dimensions, sizeof(Dimension), cmp_dimension_id);

 return space;
}
