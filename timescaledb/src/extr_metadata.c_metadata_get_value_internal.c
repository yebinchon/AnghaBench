
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int isnull; int value; int typeid; } ;
struct TYPE_4__ {int nkeys; int scandirection; int lockmode; TYPE_2__* data; int tuple_found; int * scankey; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int ScanKeyData ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef TYPE_2__ DatumValue ;
typedef int Datum ;
typedef int Catalog ;


 int Anum_metadata_key ;
 int BTEqualStrategyNumber ;
 int F_NAMEEQ ;
 int ForwardScanDirection ;
 int METADATA ;
 int METADATA_PKEY_IDX ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int catalog_get_index (int *,int ,int ) ;
 int catalog_get_table_id (int *,int ) ;
 int convert_type_to_name (int ,int ) ;
 int metadata_tuple_get_value ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

__attribute__((used)) static Datum
metadata_get_value_internal(Datum metadata_key, Oid key_type, Oid value_type, bool *isnull,
       LOCKMODE lockmode)
{
 ScanKeyData scankey[1];
 DatumValue dv = {
  .typeid = value_type,
  .isnull = 1,
 };
 Catalog *catalog = ts_catalog_get();
 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, METADATA),
  .index = catalog_get_index(catalog, METADATA, METADATA_PKEY_IDX),
  .nkeys = 1,
  .scankey = scankey,
  .tuple_found = metadata_tuple_get_value,
  .data = &dv,
  .lockmode = lockmode,
  .scandirection = ForwardScanDirection,
 };

 ScanKeyInit(&scankey[0],
    Anum_metadata_key,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    convert_type_to_name(metadata_key, key_type));

 ts_scanner_scan(&scanctx);

 if (((void*)0) != isnull)
  *isnull = dv.isnull;

 return dv.value;
}
