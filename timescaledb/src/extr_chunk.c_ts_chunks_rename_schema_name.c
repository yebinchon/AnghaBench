
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nkeys; char* data; int scandirection; int lockmode; int tuple_found; int * scankey; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int ScanKeyData ;
typedef int NameData ;
typedef int Catalog ;


 int Anum_chunk_schema_name_idx_schema_name ;
 int BTEqualStrategyNumber ;
 int CHUNK ;
 int CHUNK_SCHEMA_NAME_INDEX ;
 int F_NAMEEQ ;
 int ForwardScanDirection ;
 int NameGetDatum (int *) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int catalog_get_index (int *,int ,int ) ;
 int catalog_get_table_id (int *,int ) ;
 int chunk_rename_schema_name ;
 int namestrcpy (int *,char*) ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

void
ts_chunks_rename_schema_name(char *old_schema, char *new_schema)
{
 NameData old_schema_name;
 ScanKeyData scankey[1];
 Catalog *catalog = ts_catalog_get();
 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, CHUNK),
  .index = catalog_get_index(catalog, CHUNK, CHUNK_SCHEMA_NAME_INDEX),
  .nkeys = 1,
  .scankey = scankey,
  .tuple_found = chunk_rename_schema_name,
  .data = new_schema,
  .lockmode = RowExclusiveLock,
  .scandirection = ForwardScanDirection,
 };

 namestrcpy(&old_schema_name, old_schema);

 ScanKeyInit(&scankey[0],
    Anum_chunk_schema_name_idx_schema_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    NameGetDatum(&old_schema_name));

 ts_scanner_scan(&scanctx);
}
