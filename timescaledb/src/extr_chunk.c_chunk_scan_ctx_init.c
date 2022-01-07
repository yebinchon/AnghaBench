
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct HASHCTL {int keysize; int entrysize; int hcxt; } ;
typedef int int32 ;
struct TYPE_3__ {int early_abort; int lockmode; scalar_t__ num_complete_chunks; int * point; int * space; int htab; } ;
typedef int Point ;
typedef int Hyperspace ;
typedef int ChunkScanEntry ;
typedef TYPE_1__ ChunkScanCtx ;


 int CurrentMemoryContext ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int NoLock ;
 int hash_create (char*,int,struct HASHCTL*,int) ;

__attribute__((used)) static void
chunk_scan_ctx_init(ChunkScanCtx *ctx, Hyperspace *hs, Point *p)
{
 struct HASHCTL hctl = {
  .keysize = sizeof(int32),
  .entrysize = sizeof(ChunkScanEntry),
  .hcxt = CurrentMemoryContext,
 };

 ctx->htab = hash_create("chunk-scan-context", 20, &hctl, HASH_ELEM | HASH_CONTEXT | HASH_BLOBS);
 ctx->space = hs;
 ctx->point = p;
 ctx->num_complete_chunks = 0;
 ctx->early_abort = 0;
 ctx->lockmode = NoLock;
}
