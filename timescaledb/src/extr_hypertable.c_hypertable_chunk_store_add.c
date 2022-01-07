
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int cube; } ;
struct TYPE_11__ {int chunk; int mcxt; } ;
struct TYPE_10__ {int chunk_cache; } ;
typedef int MemoryContext ;
typedef TYPE_1__ Hypertable ;
typedef TYPE_2__ ChunkStoreEntry ;
typedef TYPE_3__ Chunk ;


 int ALLOCSET_SMALL_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int MemoryContextSwitchTo (int ) ;
 int chunk_store_entry_free ;
 TYPE_2__* palloc (int) ;
 int ts_chunk_copy (TYPE_3__*) ;
 int ts_subspace_store_add (int ,int ,TYPE_2__*,int ) ;
 int ts_subspace_store_mcxt (int ) ;

__attribute__((used)) static ChunkStoreEntry *
hypertable_chunk_store_add(Hypertable *h, Chunk *chunk)
{
 ChunkStoreEntry *cse;
 MemoryContext old_mcxt, chunk_mcxt;

 chunk_mcxt = AllocSetContextCreate(ts_subspace_store_mcxt(h->chunk_cache),
            "chunk cache entry memory context",
            ALLOCSET_SMALL_SIZES);


 old_mcxt = MemoryContextSwitchTo(chunk_mcxt);
 cse = palloc(sizeof(ChunkStoreEntry));
 cse->mcxt = chunk_mcxt;
 cse->chunk = ts_chunk_copy(chunk);
 ts_subspace_store_add(h->chunk_cache, chunk->cube, cse, chunk_store_entry_free);
 MemoryContextSwitchTo(old_mcxt);

 return cse;
}
