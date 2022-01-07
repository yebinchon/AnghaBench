
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* tuple; int scanrel; int desc; } ;
typedef TYPE_2__ TupleInfo ;
struct TYPE_9__ {int t_self; } ;
struct TYPE_6__ {scalar_t__ num_slices; scalar_t__ interval_length; int integer_now_func_schema; int integer_now_func; int partitioning_func_schema; int partitioning_func; int column_type; int column_name; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
typedef int ScanTupleResult ;
typedef int HeapTuple ;
typedef TYPE_3__ Dimension ;
typedef int Datum ;
typedef int CatalogSecurityContext ;


 int Anum_dimension_column_name ;
 int Anum_dimension_column_type ;
 int Anum_dimension_integer_now_func ;
 int Anum_dimension_integer_now_func_schema ;
 int Anum_dimension_interval_length ;
 int Anum_dimension_num_slices ;
 int Anum_dimension_partitioning_func ;
 int Anum_dimension_partitioning_func_schema ;
 int Assert (int) ;
 size_t AttrNumberGetAttrOffset (int ) ;
 int Int16GetDatum (scalar_t__) ;
 int Int64GetDatum (scalar_t__) ;
 int NameGetDatum (int *) ;
 char* NameStr (int ) ;
 int Natts_dimension ;
 int ObjectIdGetDatum (int ) ;
 int SCAN_DONE ;
 int heap_deform_tuple (TYPE_4__*,int ,int *,int*) ;
 int heap_form_tuple (int ,int *,int*) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_restore_user (int *) ;
 int ts_catalog_update_tid (int ,int *,int ) ;

__attribute__((used)) static ScanTupleResult
dimension_tuple_update(TupleInfo *ti, void *data)
{
 Dimension *dim = data;
 HeapTuple tuple;
 Datum values[Natts_dimension];
 bool nulls[Natts_dimension];
 CatalogSecurityContext sec_ctx;

 heap_deform_tuple(ti->tuple, ti->desc, values, nulls);

 Assert((dim->fd.num_slices <= 0 && dim->fd.interval_length > 0) ||
     (dim->fd.num_slices > 0 && dim->fd.interval_length <= 0));

 values[AttrNumberGetAttrOffset(Anum_dimension_column_name)] =
  NameGetDatum(&dim->fd.column_name);
 values[AttrNumberGetAttrOffset(Anum_dimension_column_type)] =
  ObjectIdGetDatum(dim->fd.column_type);
 values[AttrNumberGetAttrOffset(Anum_dimension_num_slices)] = Int16GetDatum(dim->fd.num_slices);

 if (!nulls[AttrNumberGetAttrOffset(Anum_dimension_partitioning_func)] &&
  !nulls[AttrNumberGetAttrOffset(Anum_dimension_partitioning_func_schema)])
 {
  values[AttrNumberGetAttrOffset(Anum_dimension_partitioning_func)] =
   NameGetDatum(&dim->fd.partitioning_func);
  values[AttrNumberGetAttrOffset(Anum_dimension_partitioning_func_schema)] =
   NameGetDatum(&dim->fd.partitioning_func_schema);
 }

 if (*NameStr(dim->fd.integer_now_func) != '\0' &&
  *NameStr(dim->fd.integer_now_func_schema) != '\0')
 {
  values[AttrNumberGetAttrOffset(Anum_dimension_integer_now_func)] =
   NameGetDatum(&dim->fd.integer_now_func);
  values[AttrNumberGetAttrOffset(Anum_dimension_integer_now_func_schema)] =
   NameGetDatum(&dim->fd.integer_now_func_schema);
  nulls[AttrNumberGetAttrOffset(Anum_dimension_integer_now_func)] = 0;
  nulls[AttrNumberGetAttrOffset(Anum_dimension_integer_now_func_schema)] = 0;
 }

 if (!nulls[AttrNumberGetAttrOffset(Anum_dimension_interval_length)])
  values[AttrNumberGetAttrOffset(Anum_dimension_interval_length)] =
   Int64GetDatum(dim->fd.interval_length);

 tuple = heap_form_tuple(ti->desc, values, nulls);

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_update_tid(ti->scanrel, &ti->tuple->t_self, tuple);
 ts_catalog_restore_user(&sec_ctx);

 return SCAN_DONE;
}
