
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tuple_found_func ;
typedef int int32 ;
struct TYPE_3__ {int nkeys; int limit; void* data; int scandirection; int lockmode; int tuple_found; int * scankey; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int ScanKeyData ;
typedef int LOCKMODE ;
typedef int Catalog ;


 int Anum_dimension_id_idx_id ;
 int BTEqualStrategyNumber ;
 int DIMENSION ;
 int DIMENSION_ID_IDX ;
 int F_INT4EQ ;
 int ForwardScanDirection ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int catalog_get_index (int *,int ,int ) ;
 int catalog_get_table_id (int *,int ) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

__attribute__((used)) static int
dimension_scan_update(int32 dimension_id, tuple_found_func tuple_found, void *data,
       LOCKMODE lockmode)
{
 Catalog *catalog = ts_catalog_get();
 ScanKeyData scankey[1];
 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, DIMENSION),
  .index = catalog_get_index(catalog, DIMENSION, DIMENSION_ID_IDX),
  .nkeys = 1,
  .limit = 1,
  .scankey = scankey,
  .data = data,
  .tuple_found = tuple_found,
  .lockmode = lockmode,
  .scandirection = ForwardScanDirection,
 };

 ScanKeyInit(&scankey[0],
    Anum_dimension_id_idx_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(dimension_id));

 return ts_scanner_scan(&scanctx);
}
