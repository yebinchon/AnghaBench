
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16 ;
typedef int (* on_chunk_func ) (TYPE_1__*,int ) ;
struct TYPE_8__ {int chunk; } ;
struct TYPE_7__ {int htab; } ;
typedef int HASH_SEQ_STATUS ;
typedef TYPE_2__ ChunkScanEntry ;
typedef TYPE_1__ ChunkScanCtx ;





 int hash_seq_init (int *,int ) ;
 TYPE_2__* hash_seq_search (int *) ;
 int hash_seq_term (int *) ;

__attribute__((used)) static int
chunk_scan_ctx_foreach_chunk(ChunkScanCtx *ctx, on_chunk_func on_chunk, uint16 limit)
{
 HASH_SEQ_STATUS status;
 ChunkScanEntry *entry;
 uint16 num_processed = 0;

 hash_seq_init(&status, ctx->htab);

 for (entry = hash_seq_search(&status); entry != ((void*)0); entry = hash_seq_search(&status))
 {
  switch (on_chunk(ctx, entry->chunk))
  {
   case 130:
    num_processed++;
    hash_seq_term(&status);
    return num_processed;
   case 128:
    num_processed++;

    if (limit > 0 && num_processed == limit)
    {
     hash_seq_term(&status);
     return num_processed;
    }
    break;
   case 129:
    break;
  }
 }

 return num_processed;
}
