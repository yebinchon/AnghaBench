
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cache; } ;
typedef TYPE_1__ ChunkDispatch ;


 int ts_subspace_store_free (int ) ;

void
ts_chunk_dispatch_destroy(ChunkDispatch *cd)
{
 ts_subspace_store_free(cd->cache);
}
