
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int Assert (int) ;
 int CHUNK_EXCL_FUNC_NAME ;
 int INTERNAL_SCHEMA_NAME ;
 scalar_t__ InvalidOid ;
 scalar_t__ LookupFuncName (int *,int ,int ,int) ;
 scalar_t__ chunk_exclusion_func ;
 int lengthof (int ) ;
 int * list_make2 (int ,int ) ;
 int makeString (int ) ;
 int ts_chunks_arg_types ;

__attribute__((used)) static void
init_chunk_exclusion_func()
{
 if (chunk_exclusion_func == InvalidOid)
 {
  List *l = list_make2(makeString(INTERNAL_SCHEMA_NAME), makeString(CHUNK_EXCL_FUNC_NAME));
  chunk_exclusion_func =
   LookupFuncName(l, lengthof(ts_chunks_arg_types), ts_chunks_arg_types, 0);
 }
 Assert(chunk_exclusion_func != InvalidOid);
}
