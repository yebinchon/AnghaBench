
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; int scandirection; int lockmode; int tuple_found; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int Catalog ;


 int ForwardScanDirection ;
 int HYPERTABLE ;
 int InvalidOid ;
 int RowExclusiveLock ;
 int catalog_get_table_id (int *,int ) ;
 int hypertable_rename_schema_name ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

void
ts_hypertables_rename_schema_name(const char *old_name, const char *new_name)
{
 const char *schema_names[2] = { old_name, new_name };
 Catalog *catalog = ts_catalog_get();

 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, HYPERTABLE),
  .index = InvalidOid,
  .tuple_found = hypertable_rename_schema_name,
  .data = (void *) schema_names,
  .lockmode = RowExclusiveLock,
  .scandirection = ForwardScanDirection,
 };

 ts_scanner_scan(&scanctx);
}
