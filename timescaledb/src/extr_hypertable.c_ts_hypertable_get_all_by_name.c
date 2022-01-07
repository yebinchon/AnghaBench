
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ht_oids; int table_name; int schema_name; } ;
typedef int Name ;
typedef int MemoryContext ;
typedef int List ;
typedef int Catalog ;
typedef TYPE_1__ AccumHypertable ;


 int AccessShareLock ;
 int HYPERTABLE ;
 int INVALID_INDEXID ;
 int * NIL ;
 int catalog_get_index (int *,int ,int ) ;
 int hypertable_scan_limit_internal (int *,int ,int ,int ,TYPE_1__*,int,int ,int,int ) ;
 int hypertable_tuple_match_name ;
 int * ts_catalog_get () ;

List *
ts_hypertable_get_all_by_name(Name schema_name, Name table_name, MemoryContext mctx)
{
 Catalog *catalog = ts_catalog_get();
 AccumHypertable data = {
  .ht_oids = NIL,
  .schema_name = schema_name,
  .table_name = table_name,
 };

 hypertable_scan_limit_internal(((void*)0),
           0,
           catalog_get_index(catalog, HYPERTABLE, INVALID_INDEXID),
           hypertable_tuple_match_name,
           &data,
           -1,
           AccessShareLock,
           0,
           mctx);

 return data.ht_oids;
}
