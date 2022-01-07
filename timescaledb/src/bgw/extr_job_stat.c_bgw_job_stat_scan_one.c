
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


 int BGW_JOB_STAT ;
 int ForwardScanDirection ;
 int catalog_get_index (int *,int ,int) ;
 int catalog_get_table_id (int *,int ) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan_one (TYPE_1__*,int,char*) ;

__attribute__((used)) static bool
bgw_job_stat_scan_one(int indexid, ScanKeyData scankey[], int nkeys, tuple_found_func tuple_found,
       tuple_filter_func tuple_filter, void *data, LOCKMODE lockmode)
{
 Catalog *catalog = ts_catalog_get();
 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, BGW_JOB_STAT),
  .index = catalog_get_index(catalog, BGW_JOB_STAT, indexid),
  .nkeys = nkeys,
  .scankey = scankey,
  .tuple_found = tuple_found,
  .filter = tuple_filter,
  .data = data,
  .lockmode = lockmode,
  .scandirection = ForwardScanDirection,
 };

 return ts_scanner_scan_one(&scanctx, 0, "bgw job stat");
}
