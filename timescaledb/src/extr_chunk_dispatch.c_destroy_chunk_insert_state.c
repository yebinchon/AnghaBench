
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ChunkInsertState ;


 int ts_chunk_insert_state_destroy (int *) ;

__attribute__((used)) static void
destroy_chunk_insert_state(void *cis)
{
 ts_chunk_insert_state_destroy((ChunkInsertState *) cis);
}
