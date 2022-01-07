
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


 int CHUNK ;
 int catalog_get_index (int *,int ,int) ;
 int catalog_get_table_id (int *,int ) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

__attribute__((used)) static int
chunk_scan_internal(int indexid, ScanKeyData scankey[], int nkeys, tuple_found_func tuple_found,
     void *data, int limit, ScanDirection scandir, LOCKMODE lockmode,
     MemoryContext mctx)
{
 Catalog *catalog = ts_catalog_get();
 ScannerCtx ctx = {
  .table = catalog_get_table_id(catalog, CHUNK),
  .index = catalog_get_index(catalog, CHUNK, indexid),
  .nkeys = nkeys,
  .data = data,
  .scankey = scankey,
  .tuple_found = tuple_found,
  .limit = limit,
  .lockmode = lockmode,
  .scandirection = scandir,
  .result_mctx = mctx,
 };

 return ts_scanner_scan(&ctx);
}
