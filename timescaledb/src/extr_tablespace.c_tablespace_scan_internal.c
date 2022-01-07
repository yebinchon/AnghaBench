
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tuple_found_func ;
typedef int tuple_filter_func ;
struct TYPE_3__ {int nkeys; void* data; int limit; int scandirection; int lockmode; int filter; int tuple_found; int * scankey; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int ScanKeyData ;
typedef int LOCKMODE ;
typedef int Catalog ;


 int ForwardScanDirection ;
 int TABLESPACE ;
 int catalog_get_index (int *,int ,int) ;
 int catalog_get_table_id (int *,int ) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

__attribute__((used)) static int
tablespace_scan_internal(int indexid, ScanKeyData *scankey, int nkeys, tuple_found_func tuple_found,
       tuple_filter_func tuple_filter, void *data, int limit, LOCKMODE lockmode)
{
 Catalog *catalog = ts_catalog_get();
 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, TABLESPACE),
  .index = catalog_get_index(catalog, TABLESPACE, indexid),
  .nkeys = nkeys,
  .scankey = scankey,
  .tuple_found = tuple_found,
  .filter = tuple_filter,
  .data = data,
  .limit = limit,
  .lockmode = lockmode,
  .scandirection = ForwardScanDirection,
 };

 return ts_scanner_scan(&scanctx);
}
