
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int desc; int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_6__ {int table_name; int schema_name; } ;
typedef int ScanTupleResult ;
typedef int Oid ;
typedef TYPE_2__ FormData_hypertable ;


 int NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int SCAN_DONE ;
 int get_namespace_oid (int ,int) ;
 int get_relname_relid (int ,int ) ;
 int hypertable_formdata_fill (TYPE_2__*,int ,int ) ;

__attribute__((used)) static ScanTupleResult
hypertable_tuple_get_relid(TupleInfo *ti, void *data)
{
 Oid *relid = data;
 FormData_hypertable fd;
 Oid schema_oid;

 hypertable_formdata_fill(&fd, ti->tuple, ti->desc);

 schema_oid = get_namespace_oid(NameStr(fd.schema_name), 1);

 if (OidIsValid(schema_oid))
  *relid = get_relname_relid(NameStr(fd.table_name), schema_oid);

 return SCAN_DONE;
}
