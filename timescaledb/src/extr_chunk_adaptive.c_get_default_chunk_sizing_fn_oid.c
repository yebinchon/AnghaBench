
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chunkfnargtypes ;
typedef int Oid ;
typedef int List ;


 int DEFAULT_CHUNK_SIZING_FN_NAME ;
 int INT4OID ;
 int INT8OID ;
 int INTERNAL_SCHEMA_NAME ;
 int LookupFuncName (int *,int,int *,int) ;
 int * list_make2 (int ,int ) ;
 int makeString (int ) ;

__attribute__((used)) static Oid
get_default_chunk_sizing_fn_oid()
{
 Oid chunkfnargtypes[] = { INT4OID, INT8OID, INT8OID };
 List *funcname =
  list_make2(makeString(INTERNAL_SCHEMA_NAME), makeString(DEFAULT_CHUNK_SIZING_FN_NAME));
 int nargs = sizeof(chunkfnargtypes) / sizeof(chunkfnargtypes[0]);
 Oid chunkfnoid = LookupFuncName(funcname, nargs, chunkfnargtypes, 0);
 return chunkfnoid;
}
