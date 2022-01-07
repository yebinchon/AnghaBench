
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int table_id; } ;
struct TYPE_7__ {scalar_t__ lockmode; int data; int space; } ;
typedef TYPE_1__ ChunkScanCtx ;
typedef int ChunkResult ;
typedef TYPE_2__ Chunk ;


 int CHUNK_IGNORED ;
 int CHUNK_PROCESSED ;
 int LockRelationOid (int ,scalar_t__) ;
 scalar_t__ NoLock ;
 int chunk_fill_stub (TYPE_2__*,int) ;
 int chunk_is_complete (TYPE_2__*,int ) ;
 int lappend_oid (int ,int ) ;

__attribute__((used)) static ChunkResult
append_chunk_oid(ChunkScanCtx *scanctx, Chunk *chunk)
{
 if (!chunk_is_complete(chunk, scanctx->space))
  return CHUNK_IGNORED;


 chunk_fill_stub(chunk, 0);

 if (scanctx->lockmode != NoLock)
  LockRelationOid(chunk->table_id, scanctx->lockmode);

 scanctx->data = lappend_oid(scanctx->data, chunk->table_id);

 return CHUNK_PROCESSED;
}
