
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int16 ;
struct TYPE_3__ {scalar_t__ capacity; int constraints; int mctx; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ChunkConstraints ;


 int CHUNK_CONSTRAINTS_SIZE (scalar_t__) ;
 int MemoryContextSwitchTo (int ) ;
 int repalloc (int ,int ) ;

__attribute__((used)) static void
chunk_constraints_expand(ChunkConstraints *ccs, int16 new_capacity)
{
 MemoryContext old;

 if (new_capacity <= ccs->capacity)
  return;

 old = MemoryContextSwitchTo(ccs->mctx);
 ccs->capacity = new_capacity;
 ccs->constraints = repalloc(ccs->constraints, CHUNK_CONSTRAINTS_SIZE(new_capacity));
 MemoryContextSwitchTo(old);
}
