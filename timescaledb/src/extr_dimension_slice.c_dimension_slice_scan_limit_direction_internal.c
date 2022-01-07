
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tuple_found_func ;
struct TYPE_3__ {int nkeys; void* data; int limit; int result_mctx; int scandirection; int lockmode; int tuple_found; int * scankey; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int ScanKeyData ;
typedef int ScanDirection ;
typedef int MemoryContext ;
typedef int LOCKMODE ;
typedef int Catalog ;


 int DIMENSION_SLICE ;
 int catalog_get_index (int *,int ,int) ;
 int catalog_get_table_id (int *,int ) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

__attribute__((used)) static int
dimension_slice_scan_limit_direction_internal(int indexid, ScanKeyData *scankey, int nkeys,
             tuple_found_func on_tuple_found, void *scandata,
             int limit, ScanDirection scandir, LOCKMODE lockmode,
             MemoryContext mctx)
{
 Catalog *catalog = ts_catalog_get();
 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, DIMENSION_SLICE),
  .index = catalog_get_index(catalog, DIMENSION_SLICE, indexid),
  .nkeys = nkeys,
  .scankey = scankey,
  .data = scandata,
  .limit = limit,
  .tuple_found = on_tuple_found,
  .lockmode = lockmode,
  .scandirection = scandir,
  .result_mctx = mctx,
 };

 return ts_scanner_scan(&scanctx);
}
