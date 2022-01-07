
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tuple; int scanrel; int desc; } ;
typedef TYPE_1__ TupleInfo ;
typedef int ScanTupleResult ;
typedef int Hypertable ;
typedef int CatalogSecurityContext ;


 int Anum_hypertable_compressed_hypertable_id ;
 int Anum_hypertable_id ;
 int DROP_RESTRICT ;
 int DatumGetInt32 (int ) ;
 int SCAN_CONTINUE ;
 int heap_getattr (int ,int ,int ,int*) ;
 int ts_bgw_policy_delete_by_hypertable_id (int) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_delete (int ,int ) ;
 int ts_catalog_restore_user (int *) ;
 int ts_chunk_delete_by_hypertable_id (int) ;
 int ts_continuous_agg_drop_hypertable_callback (int) ;
 int ts_dimension_delete_by_hypertable_id (int,int) ;
 int ts_hypertable_compression_delete_by_hypertable_id (int) ;
 int ts_hypertable_drop (int *,int ) ;
 int * ts_hypertable_get_by_id (int) ;
 int ts_tablespace_delete (int,int *) ;

__attribute__((used)) static ScanTupleResult
hypertable_tuple_delete(TupleInfo *ti, void *data)
{
 CatalogSecurityContext sec_ctx;
 bool isnull;
 bool compressed_hypertable_id_isnull;
 int hypertable_id =
  DatumGetInt32(heap_getattr(ti->tuple, Anum_hypertable_id, ti->desc, &isnull));
 int compressed_hypertable_id =
  DatumGetInt32(heap_getattr(ti->tuple,
           Anum_hypertable_compressed_hypertable_id,
           ti->desc,
           &compressed_hypertable_id_isnull));

 ts_tablespace_delete(hypertable_id, ((void*)0));
 ts_chunk_delete_by_hypertable_id(hypertable_id);
 ts_dimension_delete_by_hypertable_id(hypertable_id, 1);


 ts_bgw_policy_delete_by_hypertable_id(hypertable_id);


 ts_continuous_agg_drop_hypertable_callback(hypertable_id);


 ts_hypertable_compression_delete_by_hypertable_id(hypertable_id);

 if (!compressed_hypertable_id_isnull)
 {
  Hypertable *compressed_hypertable = ts_hypertable_get_by_id(compressed_hypertable_id);

  if (compressed_hypertable != ((void*)0))
   ts_hypertable_drop(compressed_hypertable, DROP_RESTRICT);
 }

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_delete(ti->scanrel, ti->tuple);
 ts_catalog_restore_user(&sec_ctx);

 return SCAN_CONTINUE;
}
