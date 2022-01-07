
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Oid ;


 int ERROR ;
 int GetSysCacheOid2 (int ,int ,int ) ;
 int LookupExplicitNamespace (char const*,int) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int PointerGetDatum (char const*) ;
 int TYPENAMENSP ;
 int elog (int ,char*,char const*,char const*) ;
 char* pq_getmsgstring (int ) ;

__attribute__((used)) static Oid
polydatum_deserialize_type(StringInfo buf)
{
 const char *schema_name = pq_getmsgstring(buf);
 const char *type_name = pq_getmsgstring(buf);
 Oid schema_oid = LookupExplicitNamespace(schema_name, 0);
 Oid type_oid =
  GetSysCacheOid2(TYPENAMENSP, PointerGetDatum(type_name), ObjectIdGetDatum(schema_oid));
 if (!OidIsValid(type_oid))
  elog(ERROR, "cache lookup failed for type %s.%s", schema_name, type_name);

 return type_oid;
}
