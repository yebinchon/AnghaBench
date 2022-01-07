
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int stopcount; int database_info; } ;
typedef TYPE_1__ TablespaceScanInfo ;
typedef int ScanKeyData ;


 int Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id ;
 int Anum_tablespace_hypertable_id_tablespace_name_idx_tablespace_name ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int CommandCounterIncrement () ;
 int DirectFunctionCall1 (int ,int ) ;
 int F_INT4EQ ;
 int F_NAMEEQ ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX ;
 int namein ;
 int tablespace_scan_internal (int ,int *,int,int ,int *,TYPE_1__*,int ,int ) ;
 int tablespace_tuple_delete ;
 int ts_catalog_database_info_get () ;

int
ts_tablespace_delete(int32 hypertable_id, const char *tspcname)

{
 ScanKeyData scankey[2];
 TablespaceScanInfo info = {
  .database_info = ts_catalog_database_info_get(),
  .stopcount = (((void*)0) != tspcname),
 };
 int num_deleted, nkeys = 0;

 ScanKeyInit(&scankey[nkeys++],
    Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(hypertable_id));

 if (((void*)0) != tspcname)
  ScanKeyInit(&scankey[nkeys++],
     Anum_tablespace_hypertable_id_tablespace_name_idx_tablespace_name,
     BTEqualStrategyNumber,
     F_NAMEEQ,
     DirectFunctionCall1(namein, CStringGetDatum(tspcname)));

 num_deleted = tablespace_scan_internal(TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX,
             scankey,
             nkeys,
             tablespace_tuple_delete,
             ((void*)0),
             &info,
             0,
             RowExclusiveLock);

 if (num_deleted > 0)
  CommandCounterIncrement();

 return num_deleted;
}
