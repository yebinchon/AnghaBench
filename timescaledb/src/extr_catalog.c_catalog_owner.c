
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nspowner; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_namespace ;


 int CATALOG_SCHEMA_NAME ;
 int ERRCODE_UNDEFINED_SCHEMA ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NAMESPACEOID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_namespace_oid (int ,int) ;

__attribute__((used)) static Oid
catalog_owner(void)
{
 HeapTuple tuple;
 Oid owner_oid;
 Oid nsp_oid = get_namespace_oid(CATALOG_SCHEMA_NAME, 0);

 tuple = SearchSysCache1(NAMESPACEOID, ObjectIdGetDatum(nsp_oid));

 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_SCHEMA),
     errmsg("schema with OID %u does not exist", nsp_oid)));

 owner_oid = ((Form_pg_namespace) GETSTRUCT(tuple))->nspowner;

 ReleaseSysCache(tuple);

 return owner_oid;
}
