
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int HeapTuple ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_extension_extname ;
 int Anum_pg_extension_extversion ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int EXTENSION_NAME ;
 int ExtensionNameIndexId ;
 int ExtensionRelationId ;
 int F_NAMEEQ ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TextDatumGetCString (int ) ;
 int elog (int ,char*) ;
 int heap_close (int ,int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int heap_open (int ,int ) ;
 int namein ;
 char* pstrdup (int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static char *
extension_version(void)
{
 Datum result;
 Relation rel;
 SysScanDesc scandesc;
 HeapTuple tuple;
 ScanKeyData entry[1];
 bool is_null = 1;
 char *sql_version = ((void*)0);

 rel = heap_open(ExtensionRelationId, AccessShareLock);

 ScanKeyInit(&entry[0],
    Anum_pg_extension_extname,
    BTEqualStrategyNumber,
    F_NAMEEQ,
    DirectFunctionCall1(namein, CStringGetDatum(EXTENSION_NAME)));

 scandesc = systable_beginscan(rel, ExtensionNameIndexId, 1, ((void*)0), 1, entry);

 tuple = systable_getnext(scandesc);


 if (HeapTupleIsValid(tuple))
 {
  result = heap_getattr(tuple, Anum_pg_extension_extversion, RelationGetDescr(rel), &is_null);

  if (!is_null)
  {
   sql_version = pstrdup(TextDatumGetCString(result));
  }
 }

 systable_endscan(scandesc);
 heap_close(rel, AccessShareLock);

 if (sql_version == ((void*)0))
 {
  elog(ERROR, "extension not found while getting version");
 }
 return sql_version;
}
