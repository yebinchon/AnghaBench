
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

__attribute__((used)) static void
polydatum_serialize_type(StringInfo buf, Oid type_oid)
{
 HeapTuple tup;
 Form_pg_type type_tuple;
 char *namespace_name;

 tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(type_oid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", type_oid);
 type_tuple = (Form_pg_type) GETSTRUCT(tup);
 namespace_name = get_namespace_name(type_tuple->typnamespace);


 pq_sendstring(buf, namespace_name);
 pq_sendstring(buf, NameStr(type_tuple->typname));

 ReleaseSysCache(tup);
}
