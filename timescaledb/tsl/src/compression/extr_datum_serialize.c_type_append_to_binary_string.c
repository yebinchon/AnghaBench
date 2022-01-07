
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typname; int typnamespace; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name (int ) ;
 int pq_sendstring (int ,char*) ;

void
type_append_to_binary_string(Oid type_oid, StringInfo buffer)
{
 Form_pg_type type_tuple;
 HeapTuple tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(type_oid));
 char *namespace_name;
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", type_oid);

 type_tuple = (Form_pg_type) GETSTRUCT(tup);

 namespace_name = get_namespace_name(type_tuple->typnamespace);

 pq_sendstring(buffer, namespace_name);
 pq_sendstring(buffer, NameStr(type_tuple->typname));

 ReleaseSysCache(tup);
}
