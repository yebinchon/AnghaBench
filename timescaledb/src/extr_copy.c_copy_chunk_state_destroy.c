
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int estate; int dispatch; } ;
typedef TYPE_1__ CopyChunkState ;


 int FreeExecutorState (int ) ;
 int ts_chunk_dispatch_destroy (int ) ;

__attribute__((used)) static void
copy_chunk_state_destroy(CopyChunkState *ccstate)
{
 ts_chunk_dispatch_destroy(ccstate->dispatch);
 FreeExecutorState(ccstate->estate);
}
