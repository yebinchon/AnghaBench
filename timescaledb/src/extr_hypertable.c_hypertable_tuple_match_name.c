
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_8__ {int ht_oids; int * table_name; int * schema_name; } ;
struct TYPE_7__ {int table_name; int schema_name; } ;
typedef int ScanTupleResult ;
typedef int Oid ;
typedef TYPE_2__ FormData_hypertable ;
typedef TYPE_3__ AccumHypertable ;


 scalar_t__ DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int NameGetDatum (int *) ;
 int NameStr (int ) ;
 int OidIsValid (int ) ;
 int SCAN_CONTINUE ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;
 int hypertable_formdata_fill (TYPE_2__*,int ,int ) ;
 int lappend_oid (int ,int ) ;
 int nameeq ;

__attribute__((used)) static ScanTupleResult
hypertable_tuple_match_name(TupleInfo *ti, void *data)
{
 Oid relid;
 FormData_hypertable fd;
 AccumHypertable *accum = data;
 Oid schema_oid;

 hypertable_formdata_fill(&fd, ti->tuple, ti->desc);
 schema_oid = get_namespace_oid(NameStr(fd.schema_name), 1);

 if (!OidIsValid(schema_oid))
  return SCAN_CONTINUE;

 relid = get_relname_relid(NameStr(fd.table_name), schema_oid);
 if (!OidIsValid(relid))
  return SCAN_CONTINUE;

 if ((accum->schema_name == ((void*)0) ||
   DatumGetBool(DirectFunctionCall2(nameeq,
            NameGetDatum(accum->schema_name),
            NameGetDatum(&fd.schema_name)))) &&
  (accum->table_name == ((void*)0) ||
   DatumGetBool(DirectFunctionCall2(nameeq,
            NameGetDatum(accum->table_name),
            NameGetDatum(&fd.table_name)))))
  accum->ht_oids = lappend_oid(accum->ht_oids, relid);

 return SCAN_CONTINUE;
}
