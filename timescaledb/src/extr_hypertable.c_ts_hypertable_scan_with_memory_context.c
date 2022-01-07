
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tuple_found_func ;
typedef int ScanKeyData ;
typedef int NameData ;
typedef int MemoryContext ;
typedef int LOCKMODE ;


 int Anum_hypertable_name_idx_schema ;
 int Anum_hypertable_name_idx_table ;
 int BTEqualStrategyNumber ;
 int F_NAMEEQ ;
 int HYPERTABLE_NAME_INDEX ;
 int NameGetDatum (int *) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int hypertable_scan_limit_internal (int *,int,int ,int ,void*,int,int ,int,int ) ;
 int namestrcpy (int *,char const*) ;

int
ts_hypertable_scan_with_memory_context(const char *schema, const char *table,
            tuple_found_func tuple_found, void *data, LOCKMODE lockmode,
            bool tuplock, MemoryContext mctx)
{
 ScanKeyData scankey[2];
 NameData schema_name, table_name;

 namestrcpy(&schema_name, schema);
 namestrcpy(&table_name, table);


 ScanKeyInit(&scankey[0],
    Anum_hypertable_name_idx_schema,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    NameGetDatum(&schema_name));
 ScanKeyInit(&scankey[1],
    Anum_hypertable_name_idx_table,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    NameGetDatum(&table_name));

 return hypertable_scan_limit_internal(scankey,
            2,
            HYPERTABLE_NAME_INDEX,
            tuple_found,
            data,
            1,
            lockmode,
            tuplock,
            mctx);
}
