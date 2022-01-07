
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ScanKeyData ;


 int Anum_hypertable_associated_schema_name ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int CurrentMemoryContext ;
 int DirectFunctionCall1 (int ,int ) ;
 int F_NAMEEQ ;
 int INVALID_INDEXID ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int hypertable_scan_limit_internal (int *,int,int ,int ,int *,int ,int ,int,int ) ;
 int namein ;
 int reset_associated_tuple_found ;

int
ts_hypertable_reset_associated_schema_name(const char *associated_schema)
{
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_hypertable_associated_schema_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    DirectFunctionCall1(namein, CStringGetDatum(associated_schema)));

 return hypertable_scan_limit_internal(scankey,
            1,
            INVALID_INDEXID,
            reset_associated_tuple_found,
            ((void*)0),
            0,
            RowExclusiveLock,
            0,
            CurrentMemoryContext);
}
