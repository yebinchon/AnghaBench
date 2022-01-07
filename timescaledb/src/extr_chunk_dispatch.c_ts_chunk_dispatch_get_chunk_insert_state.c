
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int cube; } ;
struct TYPE_16__ {scalar_t__ prev_cis_oid; TYPE_2__* prev_cis; int cache; int hypertable; } ;
struct TYPE_15__ {TYPE_1__* rel; } ;
struct TYPE_14__ {scalar_t__ rd_id; } ;
typedef int Point ;
typedef TYPE_2__ ChunkInsertState ;
typedef TYPE_3__ ChunkDispatch ;
typedef TYPE_4__ Chunk ;


 int Assert (int ) ;
 int ERROR ;
 int destroy_chunk_insert_state ;
 int elog (int ,char*) ;
 TYPE_2__* ts_chunk_insert_state_create (TYPE_4__*,TYPE_3__*) ;
 int ts_chunk_insert_state_switch (TYPE_2__*) ;
 TYPE_4__* ts_hypertable_get_or_create_chunk (int ,int *) ;
 int ts_subspace_store_add (int ,int ,TYPE_2__*,int ) ;
 TYPE_2__* ts_subspace_store_get (int ,int *) ;

extern ChunkInsertState *
ts_chunk_dispatch_get_chunk_insert_state(ChunkDispatch *dispatch, Point *point,
           bool *cis_changed_out)
{
 ChunkInsertState *cis;

 Assert(cis_changed_out != ((void*)0));
 cis = ts_subspace_store_get(dispatch->cache, point);
 *cis_changed_out = 1;

 if (((void*)0) == cis)
 {
  Chunk *new_chunk;

  new_chunk = ts_hypertable_get_or_create_chunk(dispatch->hypertable, point);

  if (((void*)0) == new_chunk)
   elog(ERROR, "no chunk found or created");

  cis = ts_chunk_insert_state_create(new_chunk, dispatch);
  ts_subspace_store_add(dispatch->cache, new_chunk->cube, cis, destroy_chunk_insert_state);
 }
 else if (cis->rel->rd_id == dispatch->prev_cis_oid && cis == dispatch->prev_cis)
 {

  *cis_changed_out = 0;
 }

 if (*cis_changed_out)
  ts_chunk_insert_state_switch(cis);

 Assert(cis != ((void*)0));
 dispatch->prev_cis = cis;
 dispatch->prev_cis_oid = cis->rel->rd_id;
 return cis;
}
