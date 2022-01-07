
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int ScanKeyData ;
typedef int NameData ;
typedef int MemoryContext ;
typedef int Chunk ;


 int Anum_chunk_schema_name_idx_schema_name ;
 int Anum_chunk_schema_name_idx_table_name ;
 int BTEqualStrategyNumber ;
 int CHUNK_SCHEMA_NAME_INDEX ;
 int F_NAMEEQ ;
 int NameGetDatum (int *) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * chunk_scan_find (int ,int *,int,int ,int ,int) ;
 int namestrcpy (int *,char const*) ;

Chunk *
ts_chunk_get_by_name_with_memory_context(const char *schema_name, const char *table_name,
           int16 num_constraints, MemoryContext mctx,
           bool fail_if_not_found)
{
 NameData schema, table;
 ScanKeyData scankey[2];

 namestrcpy(&schema, schema_name);
 namestrcpy(&table, table_name);




 ScanKeyInit(&scankey[0],
    Anum_chunk_schema_name_idx_schema_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    NameGetDatum(&schema));
 ScanKeyInit(&scankey[1],
    Anum_chunk_schema_name_idx_table_name,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    NameGetDatum(&table));

 return chunk_scan_find(CHUNK_SCHEMA_NAME_INDEX,
         scankey,
         2,
         num_constraints,
         mctx,
         fail_if_not_found);
}
