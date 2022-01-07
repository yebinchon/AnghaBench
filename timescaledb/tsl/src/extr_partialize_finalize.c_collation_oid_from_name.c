
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int InvalidOid ;
 int * NIL ;
 int get_collation_oid (int *,int) ;
 int * lappend (int *,int ) ;
 int * list_make1 (int ) ;
 int makeString (char*) ;

__attribute__((used)) static Oid
collation_oid_from_name(char *schema_name, char *collation_name)
{
 List *namel = NIL;
 if (((void*)0) == collation_name)
  return InvalidOid;
 if (((void*)0) != schema_name)
  namel = list_make1(makeString(schema_name));
 namel = lappend(namel, makeString(collation_name));
 return get_collation_oid(namel, 0);
}
