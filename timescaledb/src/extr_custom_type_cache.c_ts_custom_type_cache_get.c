
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type_oid; size_t type_name; int schema_name; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ CustomTypeInfo ;
typedef size_t CustomType ;


 int CStringGetDatum (size_t) ;
 int ERROR ;
 scalar_t__ GetSysCacheOid2 (int ,int ,int ) ;
 scalar_t__ InvalidOid ;
 scalar_t__ LookupExplicitNamespace (int ,int) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidIsValid (scalar_t__) ;
 int TYPENAMENSP ;
 size_t _CUSTOM_TYPE_MAX_INDEX ;
 int elog (int ,char*,size_t) ;
 TYPE_1__* typeinfo ;

extern CustomTypeInfo *
ts_custom_type_cache_get(CustomType type)
{
 CustomTypeInfo *tinfo;

 if (type >= _CUSTOM_TYPE_MAX_INDEX)
  elog(ERROR, "invalid timescaledb type %d", type);

 tinfo = &typeinfo[type];

 if (tinfo->type_oid == InvalidOid)
 {
  Oid schema_oid = LookupExplicitNamespace(tinfo->schema_name, 0);
  Oid type_oid = GetSysCacheOid2(TYPENAMENSP,
            CStringGetDatum(tinfo->type_name),
            ObjectIdGetDatum(schema_oid));
  if (!OidIsValid(type_oid))
   elog(ERROR, "unknown timescaledb type %s", tinfo->type_name);

  tinfo->type_oid = type_oid;
 }

 return tinfo;
}
