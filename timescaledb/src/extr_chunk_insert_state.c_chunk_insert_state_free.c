
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mctx; } ;
typedef TYPE_1__ ChunkInsertState ;


 int MemoryContextDelete (int ) ;

__attribute__((used)) static void
chunk_insert_state_free(void *arg)
{
 ChunkInsertState *state = arg;

 MemoryContextDelete(state->mctx);
}
