
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int finalfnargtypes ;
typedef int Oid ;
typedef int List ;


 int ANYELEMENTOID ;
 int BYTEAOID ;
 int FINALFN ;
 int INTERNAL_SCHEMA_NAME ;
 int LookupFuncName (int *,int,int *,int) ;
 int NAMEOID ;
 int TEXTOID ;
 int get_array_type (int ) ;
 int * list_make2 (int ,int ) ;
 int makeString (int ) ;

__attribute__((used)) static Oid
get_finalizefnoid()
{
 Oid finalfnoid;
 Oid finalfnargtypes[] = { TEXTOID, NAMEOID, NAMEOID, get_array_type(NAMEOID),
         BYTEAOID, ANYELEMENTOID };
 List *funcname = list_make2(makeString(INTERNAL_SCHEMA_NAME), makeString(FINALFN));
 int nargs = sizeof(finalfnargtypes) / sizeof(finalfnargtypes[0]);
 finalfnoid = LookupFuncName(funcname, nargs, finalfnargtypes, 0);
 return finalfnoid;
}
