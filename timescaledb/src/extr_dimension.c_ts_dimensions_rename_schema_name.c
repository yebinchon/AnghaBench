
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nkeys; char** data; int scandirection; int lockmode; int tuple_found; int * scankey; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int ScanKeyData ;
typedef int NameData ;
typedef int Catalog ;


 int Anum_dimension_integer_now_func_schema ;
 int Anum_dimension_partitioning_func_schema ;
 int BTEqualStrategyNumber ;
 int DIMENSION ;
 int F_NAMEEQ ;
 int ForwardScanDirection ;
 int InvalidOid ;
 int NameGetDatum (int *) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int catalog_get_table_id (int *,int ) ;
 int dimension_rename_schema_name ;
 int namestrcpy (int *,char*) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

void
ts_dimensions_rename_schema_name(char *old_name, char *new_name)
{
 NameData old_schema_name;
 ScanKeyData scankey[1];
 Catalog *catalog = ts_catalog_get();
 char *names[2] = { old_name, new_name };

 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, DIMENSION),
  .index = InvalidOid,
  .nkeys = 1,
  .scankey = scankey,
  .tuple_found = dimension_rename_schema_name,
  .data = names,
  .lockmode = RowExclusiveLock,
  .scandirection = ForwardScanDirection,
 };

 namestrcpy(&old_schema_name, old_name);

 ScanKeyInit(&scankey[0],
    Anum_dimension_partitioning_func_schema,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    NameGetDatum(&old_schema_name));

 ts_scanner_scan(&scanctx);

 ScanKeyInit(&scankey[0],
    Anum_dimension_integer_now_func_schema,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    NameGetDatum(&old_schema_name));

 ts_scanner_scan(&scanctx);
}
