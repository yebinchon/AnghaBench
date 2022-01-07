
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t alloc_size; int * list; } ;
struct TYPE_4__ {int result_mctx; int scandirection; int lockmode; int tuple_found; TYPE_2__* data; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int MemoryContext ;
typedef int List ;
typedef int Catalog ;
typedef TYPE_2__ AccumData ;


 int AccessShareLock ;
 int BGW_JOB ;
 int ForwardScanDirection ;
 int InvalidOid ;
 int * NIL ;
 int bgw_job_accum_tuple_found ;
 int catalog_get_table_id (int *,int ) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

extern List *
ts_bgw_job_get_all(size_t alloc_size, MemoryContext mctx)
{
 Catalog *catalog = ts_catalog_get();
 AccumData list_data = {
  .list = NIL,
  .alloc_size = alloc_size,
 };
 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, BGW_JOB),
  .index = InvalidOid,
  .data = &list_data,
  .tuple_found = bgw_job_accum_tuple_found,
  .lockmode = AccessShareLock,
  .scandirection = ForwardScanDirection,
  .result_mctx = mctx,
 };

 ts_scanner_scan(&scanctx);
 return list_data.list;
}
