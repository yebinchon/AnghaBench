
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ capacity; int constraints; scalar_t__ num_dimension_constraints; scalar_t__ num_constraints; int mctx; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ChunkConstraints ;


 int CHUNK_CONSTRAINTS_SIZE (scalar_t__) ;
 scalar_t__ DEFAULT_EXTRA_CONSTRAINTS_SIZE ;
 TYPE_1__* MemoryContextAlloc (int ,int) ;
 int MemoryContextAllocZero (int ,int ) ;

ChunkConstraints *
ts_chunk_constraints_alloc(int size_hint, MemoryContext mctx)
{
 ChunkConstraints *ccs = MemoryContextAlloc(mctx, sizeof(ChunkConstraints));

 ccs->mctx = mctx;
 ccs->capacity = size_hint + DEFAULT_EXTRA_CONSTRAINTS_SIZE;
 ccs->num_constraints = 0;
 ccs->num_dimension_constraints = 0;
 ccs->constraints = MemoryContextAllocZero(mctx, CHUNK_CONSTRAINTS_SIZE(ccs->capacity));

 return ccs;
}
