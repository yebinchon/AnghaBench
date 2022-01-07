
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int tuple; int scanrel; int desc; int mctx; } ;
typedef TYPE_2__ TupleInfo ;
struct TYPE_11__ {int dimension_slice_id; } ;
struct TYPE_15__ {TYPE_1__ fd; } ;
struct TYPE_14__ {int num_constraints; TYPE_5__* constraints; } ;
struct TYPE_13__ {scalar_t__ compressed_chunk_id; int id; } ;
typedef int ScanTupleResult ;
typedef TYPE_3__ FormData_chunk ;
typedef int DropBehavior ;
typedef TYPE_4__ ChunkConstraints ;
typedef TYPE_5__ ChunkConstraint ;
typedef int Chunk ;
typedef int CatalogSecurityContext ;


 int CurrentMemoryContext ;
 int DEBUG1 ;
 scalar_t__ INVALID_CHUNK_ID ;
 int SCAN_CONTINUE ;
 int chunk_formdata_fill (TYPE_3__*,int ,int ) ;
 scalar_t__ is_dimension_constraint (TYPE_5__*) ;
 int ts_bgw_policy_chunk_stats_delete_by_chunk_id (int ) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_delete (int ,int ) ;
 int ts_catalog_restore_user (int *) ;
 int ts_chunk_constraint_delete_by_chunk_id (int ,TYPE_4__*) ;
 scalar_t__ ts_chunk_constraint_scan_by_dimension_slice_id (int ,int *,int ) ;
 TYPE_4__* ts_chunk_constraints_alloc (int,int ) ;
 int ts_chunk_drop (int *,int ,int ) ;
 int * ts_chunk_get_by_id (scalar_t__,int ,int) ;
 int ts_chunk_index_delete_by_chunk_id (int ,int) ;
 int ts_compression_chunk_size_delete (int ) ;
 int ts_dimension_slice_delete_by_id (int ,int) ;

__attribute__((used)) static ScanTupleResult
chunk_tuple_delete(TupleInfo *ti, void *data)
{
 FormData_chunk form;
 CatalogSecurityContext sec_ctx;
 ChunkConstraints *ccs = ts_chunk_constraints_alloc(2, ti->mctx);
 int i;
 DropBehavior *behavior = data;

 chunk_formdata_fill(&form, ti->tuple, ti->desc);
 ts_chunk_constraint_delete_by_chunk_id(form.id, ccs);
 ts_chunk_index_delete_by_chunk_id(form.id, 1);
 ts_compression_chunk_size_delete(form.id);


 for (i = 0; i < ccs->num_constraints; i++)
 {
  ChunkConstraint *cc = &ccs->constraints[i];





  if (is_dimension_constraint(cc) &&
   ts_chunk_constraint_scan_by_dimension_slice_id(cc->fd.dimension_slice_id,
                 ((void*)0),
                 CurrentMemoryContext) == 0)
   ts_dimension_slice_delete_by_id(cc->fd.dimension_slice_id, 0);
 }


 ts_bgw_policy_chunk_stats_delete_by_chunk_id(form.id);

 if (form.compressed_chunk_id != INVALID_CHUNK_ID)
 {
  Chunk *compressed_chunk = ts_chunk_get_by_id(form.compressed_chunk_id, 0, 0);

  if (compressed_chunk != ((void*)0))
   ts_chunk_drop(compressed_chunk, *behavior, DEBUG1);
 }

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_delete(ti->scanrel, ti->tuple);
 ts_catalog_restore_user(&sec_ctx);

 return SCAN_CONTINUE;
}
