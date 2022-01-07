
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tuple_found_func ;
typedef int tuple_filter_func ;
struct TYPE_3__ {int nkeys; void* data; int scandirection; int lockmode; int filter; int tuple_found; int * scankey; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int ScanKeyData ;
typedef int LOCKMODE ;
typedef int Catalog ;


 int CHUNK_INDEX ;
 int ForwardScanDirection ;
 int catalog_get_index (int *,int ,int) ;
 int catalog_get_table_id (int *,int ) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

__attribute__((used)) static int
chunk_index_scan(int indexid, ScanKeyData scankey[], int nkeys, tuple_found_func tuple_found,
     tuple_filter_func tuple_filter, void *data, LOCKMODE lockmode)
{
 Catalog *catalog = ts_catalog_get();
 ScannerCtx scanCtx = {
  .table = catalog_get_table_id(catalog, CHUNK_INDEX),
  .index = catalog_get_index(catalog, CHUNK_INDEX, indexid),
  .nkeys = nkeys,
  .scankey = scankey,
  .tuple_found = tuple_found,
  .filter = tuple_filter,
  .data = data,
  .lockmode = lockmode,
  .scandirection = ForwardScanDirection,
 };

 return ts_scanner_scan(&scanCtx);
}
