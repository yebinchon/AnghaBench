
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
typedef scalar_t__ int16 ;
struct TYPE_5__ {int compressed_chunk_id; int id; } ;
struct TYPE_6__ {int constraints; TYPE_1__ fd; } ;
typedef TYPE_2__ Chunk ;


 int CurrentMemoryContext ;
 int INVALID_CHUNK_ID ;
 TYPE_2__* palloc0 (int) ;
 int ts_chunk_constraints_alloc (scalar_t__,int ) ;

Chunk *
ts_chunk_create_stub(int32 id, int16 num_constraints)
{
 Chunk *chunk;

 chunk = palloc0(sizeof(Chunk));
 chunk->fd.id = id;
 chunk->fd.compressed_chunk_id = INVALID_CHUNK_ID;

 if (num_constraints > 0)
  chunk->constraints = ts_chunk_constraints_alloc(num_constraints, CurrentMemoryContext);

 return chunk;
}
