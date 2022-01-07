
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tuple_found_func ;
struct TYPE_3__ {int nkeys; int limit; void* data; int result_mctx; int scandirection; int lockmode; int tuple_found; int * scankey; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int ScanKeyData ;
typedef int MemoryContext ;
typedef int LOCKMODE ;
typedef int Catalog ;


 int DIMENSION ;
 int ForwardScanDirection ;
 int catalog_get_index (int *,int ,int) ;
 int catalog_get_table_id (int *,int ) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

__attribute__((used)) static int
dimension_scan_internal(ScanKeyData *scankey, int nkeys, tuple_found_func tuple_found, void *data,
      int limit, int dimension_index, LOCKMODE lockmode, MemoryContext mctx)
{
 Catalog *catalog = ts_catalog_get();
 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, DIMENSION),
  .index = catalog_get_index(catalog, DIMENSION, dimension_index),
  .nkeys = nkeys,
  .limit = limit,
  .scankey = scankey,
  .data = data,
  .tuple_found = tuple_found,
  .lockmode = lockmode,
  .scandirection = ForwardScanDirection,
  .result_mctx = mctx,
 };

 return ts_scanner_scan(&scanctx);
}
