
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

Oid
binary_string_get_type(StringInfo buffer)
{
 const char *element_type_namespace = pq_getmsgstring(buffer);
 const char *element_type_name = pq_getmsgstring(buffer);
 Oid namespace_oid;
 Oid type_oid;

 namespace_oid = LookupExplicitNamespace(element_type_namespace, 0);

 type_oid = GetSysCacheOid2(TYPENAMENSP,
          PointerGetDatum(element_type_name),
          ObjectIdGetDatum(namespace_oid));
 if (!OidIsValid(type_oid))
  elog(ERROR, "could not find type %s.%s", element_type_namespace, element_type_name);

 return type_oid;
}
