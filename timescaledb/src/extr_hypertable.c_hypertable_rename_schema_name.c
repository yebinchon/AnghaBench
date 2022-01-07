
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_6__* tuple; int scanrel; int desc; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_9__ {int t_self; } ;
struct TYPE_8__ {int chunk_sizing_func_schema; int associated_schema_name; int schema_name; } ;
typedef int ScanTupleResult ;
typedef int HeapTuple ;
typedef TYPE_2__ FormData_hypertable ;


 int SCAN_CONTINUE ;
 int heap_freetuple (int ) ;
 int hypertable_formdata_fill (TYPE_2__*,TYPE_6__*,int ) ;
 int hypertable_formdata_make_tuple (TYPE_2__*,int ) ;
 scalar_t__ namestrcmp (int *,char const*) ;
 int namestrcpy (int *,char const*) ;
 int ts_catalog_update_tid (int ,int *,int ) ;

__attribute__((used)) static ScanTupleResult
hypertable_rename_schema_name(TupleInfo *ti, void *data)
{
 const char **schema_names = (const char **) data;
 const char *old_schema_name = schema_names[0];
 const char *new_schema_name = schema_names[1];
 bool updated = 0;
 FormData_hypertable fd;

 hypertable_formdata_fill(&fd, ti->tuple, ti->desc);





 if (namestrcmp(&fd.schema_name, old_schema_name) == 0)
 {
  namestrcpy(&fd.schema_name, new_schema_name);
  updated = 1;
 }
 if (namestrcmp(&fd.associated_schema_name, old_schema_name) == 0)
 {
  namestrcpy(&fd.associated_schema_name, new_schema_name);
  updated = 1;
 }
 if (namestrcmp(&fd.chunk_sizing_func_schema, old_schema_name) == 0)
 {
  namestrcpy(&fd.chunk_sizing_func_schema, new_schema_name);
  updated = 1;
 }


 if (updated)
 {
  HeapTuple new_tuple = hypertable_formdata_make_tuple(&fd, ti->desc);
  ts_catalog_update_tid(ti->scanrel, &ti->tuple->t_self, new_tuple);
  heap_freetuple(new_tuple);
 }


 return SCAN_CONTINUE;
}
