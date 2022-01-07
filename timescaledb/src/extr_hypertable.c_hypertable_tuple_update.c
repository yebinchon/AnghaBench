
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {TYPE_2__* tuple; int scanrel; int desc; } ;
typedef TYPE_3__ TupleInfo ;
struct TYPE_17__ {int func_name; int func_schema; int func; int * colname; int table_relid; } ;
struct TYPE_12__ {int column_name; } ;
struct TYPE_16__ {TYPE_1__ fd; } ;
struct TYPE_11__ {int chunk_sizing_func_name; int chunk_sizing_func_schema; } ;
struct TYPE_15__ {TYPE_10__ fd; int chunk_sizing_func; int main_table_relid; int space; } ;
struct TYPE_13__ {int t_self; } ;
typedef int ScanTupleResult ;
typedef TYPE_4__ Hypertable ;
typedef int HeapTuple ;
typedef TYPE_5__ Dimension ;
typedef TYPE_6__ ChunkSizingInfo ;
typedef int CatalogSecurityContext ;


 int DIMENSION_TYPE_OPEN ;
 int ERROR ;
 int * NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int SCAN_DONE ;
 int elog (int ,char*) ;
 int heap_freetuple (int ) ;
 int hypertable_formdata_make_tuple (TYPE_10__*,int ) ;
 int namestrcpy (int *,int *) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_restore_user (int *) ;
 int ts_catalog_update_tid (int ,int *,int ) ;
 int ts_chunk_adaptive_sizing_info_validate (TYPE_6__*) ;
 TYPE_5__* ts_hyperspace_get_dimension (int ,int ,int ) ;

__attribute__((used)) static ScanTupleResult
hypertable_tuple_update(TupleInfo *ti, void *data)
{
 Hypertable *ht = data;
 HeapTuple new_tuple;
 CatalogSecurityContext sec_ctx;

 if (OidIsValid(ht->chunk_sizing_func))
 {
  Dimension *dim = ts_hyperspace_get_dimension(ht->space, DIMENSION_TYPE_OPEN, 0);
  ChunkSizingInfo info = {
   .table_relid = ht->main_table_relid,
   .colname = dim == ((void*)0) ? ((void*)0) : NameStr(dim->fd.column_name),
   .func = ht->chunk_sizing_func,
  };

  ts_chunk_adaptive_sizing_info_validate(&info);

  namestrcpy(&ht->fd.chunk_sizing_func_schema, NameStr(info.func_schema));
  namestrcpy(&ht->fd.chunk_sizing_func_name, NameStr(info.func_name));
 }
 else
 {
  elog(ERROR, "hypertable_tuple_update chunk_sizing_function cannot be NULL");
 }

 new_tuple = hypertable_formdata_make_tuple(&ht->fd, ti->desc);

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_update_tid(ti->scanrel, &ti->tuple->t_self, new_tuple);
 ts_catalog_restore_user(&sec_ctx);
 heap_freetuple(new_tuple);
 return SCAN_DONE;
}
