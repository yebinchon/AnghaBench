
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int nkeys; int scandirection; int lockmode; int * data; int tuple_found; int * scankey; int index; int table; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int ScanKeyData ;
typedef int Oid ;
typedef int Catalog ;


 int AccessShareLock ;
 int Anum_hypertable_pkey_idx_id ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int ForwardScanDirection ;
 int HYPERTABLE ;
 int HYPERTABLE_ID_INDEX ;
 int Int32GetDatum (int ) ;
 int InvalidOid ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int catalog_get_index (int *,int ,int ) ;
 int catalog_get_table_id (int *,int ) ;
 int hypertable_tuple_get_relid ;
 int * ts_catalog_get () ;
 int ts_scanner_scan (TYPE_1__*) ;

Oid
ts_hypertable_id_to_relid(int32 hypertable_id)
{
 Catalog *catalog = ts_catalog_get();
 Oid relid = InvalidOid;
 ScanKeyData scankey[1];
 ScannerCtx scanctx = {
  .table = catalog_get_table_id(catalog, HYPERTABLE),
  .index = catalog_get_index(catalog, HYPERTABLE, HYPERTABLE_ID_INDEX),
  .nkeys = 1,
  .scankey = scankey,
  .tuple_found = hypertable_tuple_get_relid,
  .data = &relid,
  .lockmode = AccessShareLock,
  .scandirection = ForwardScanDirection,
 };


 ScanKeyInit(&scankey[0],
    Anum_hypertable_pkey_idx_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(hypertable_id));

 ts_scanner_scan(&scanctx);

 return relid;
}
