
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {TYPE_6__* tuple; int scanrel; int desc; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_9__ {int t_self; } ;
struct TYPE_8__ {int compressed_chunk_id; } ;
typedef int ScanTupleResult ;
typedef int HeapTuple ;
typedef TYPE_2__ FormData_chunk ;
typedef int CatalogSecurityContext ;


 int SCAN_DONE ;
 int chunk_formdata_fill (TYPE_2__*,TYPE_6__*,int ) ;
 int chunk_formdata_make_tuple (TYPE_2__*,int ) ;
 int heap_freetuple (int ) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_restore_user (int *) ;
 int ts_catalog_update_tid (int ,int *,int ) ;

__attribute__((used)) static ScanTupleResult
chunk_set_compressed_id_in_tuple(TupleInfo *ti, void *data)
{
 FormData_chunk form;
 HeapTuple new_tuple;
 CatalogSecurityContext sec_ctx;
 int32 compressed_chunk_id = *((int32 *) data);

 chunk_formdata_fill(&form, ti->tuple, ti->desc);
 form.compressed_chunk_id = compressed_chunk_id;
 new_tuple = chunk_formdata_make_tuple(&form, ti->desc);

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_update_tid(ti->scanrel, &ti->tuple->t_self, new_tuple);
 ts_catalog_restore_user(&sec_ctx);
 heap_freetuple(new_tuple);

 return SCAN_DONE;
}
