
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ScanKeyData ;


 int Anum_hypertable_name_idx_schema ;
 int Anum_hypertable_name_idx_table ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int CurrentMemoryContext ;
 int DirectFunctionCall1 (int ,int ) ;
 int F_NAMEEQ ;
 int HYPERTABLE_NAME_INDEX ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int hypertable_scan_limit_internal (int *,int,int ,int ,int *,int ,int ,int,int ) ;
 int hypertable_tuple_delete ;
 int namein ;

int
ts_hypertable_delete_by_name(const char *schema_name, const char *table_name)
{
 ScanKeyData scankey[2];

 ScanKeyInit(&scankey[0],
    Anum_hypertable_name_idx_schema,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    DirectFunctionCall1(namein, CStringGetDatum(schema_name)));

 ScanKeyInit(&scankey[1],
    Anum_hypertable_name_idx_table,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    DirectFunctionCall1(namein, CStringGetDatum(table_name)));

 return hypertable_scan_limit_internal(scankey,
            2,
            HYPERTABLE_NAME_INDEX,
            hypertable_tuple_delete,
            ((void*)0),
            0,
            RowExclusiveLock,
            0,
            CurrentMemoryContext);
}
