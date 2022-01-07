
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ScanKeyData ;
typedef int DropBehavior ;


 int Anum_chunk_schema_name_idx_schema_name ;
 int Anum_chunk_schema_name_idx_table_name ;
 int BTEqualStrategyNumber ;
 int CHUNK_SCHEMA_NAME_INDEX ;
 int CStringGetDatum (char const*) ;
 int CurrentMemoryContext ;
 int DirectFunctionCall1 (int ,int ) ;
 int F_NAMEEQ ;
 int ForwardScanDirection ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int chunk_scan_internal (int ,int *,int,int ,int *,int ,int ,int ,int ) ;
 int chunk_tuple_delete ;
 int namein ;

int
ts_chunk_delete_by_name(const char *schema, const char *table, DropBehavior behavior)
{
 ScanKeyData scankey[2];

 ScanKeyInit(&scankey[0],
    Anum_chunk_schema_name_idx_schema_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    DirectFunctionCall1(namein, CStringGetDatum(schema)));
 ScanKeyInit(&scankey[1],
    Anum_chunk_schema_name_idx_table_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    DirectFunctionCall1(namein, CStringGetDatum(table)));

 return chunk_scan_internal(CHUNK_SCHEMA_NAME_INDEX,
          scankey,
          2,
          chunk_tuple_delete,
          &behavior,
          0,
          ForwardScanDirection,
          RowExclusiveLock,
          CurrentMemoryContext);
}
