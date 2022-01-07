
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* data; } ;
struct TYPE_6__ {int next_copy_from; TYPE_1__ fromctx; int dispatch; int * estate; int rel; } ;
typedef int Relation ;
typedef int Hypertable ;
typedef int EState ;
typedef int CopyFromFunc ;
typedef TYPE_2__ CopyChunkState ;


 int * CreateExecutorState () ;
 TYPE_2__* palloc (int) ;
 int ts_chunk_dispatch_create (int *,int *) ;

__attribute__((used)) static CopyChunkState *
copy_chunk_state_create(Hypertable *ht, Relation rel, CopyFromFunc from_func, void *fromctx)
{
 CopyChunkState *ccstate;
 EState *estate = CreateExecutorState();

 ccstate = palloc(sizeof(CopyChunkState));
 ccstate->rel = rel;
 ccstate->estate = estate;
 ccstate->dispatch = ts_chunk_dispatch_create(ht, estate);
 ccstate->fromctx.data = fromctx;
 ccstate->next_copy_from = from_func;

 return ccstate;
}
