
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_16__ {int id; } ;
struct TYPE_21__ {int constraints; int cube; TYPE_3__ fd; } ;
struct TYPE_15__ {int chunk_id; } ;
struct TYPE_20__ {TYPE_2__ fd; } ;
struct TYPE_19__ {int num_constraints; TYPE_7__* constraints; } ;
struct TYPE_14__ {int id; } ;
struct TYPE_18__ {TYPE_1__ fd; } ;
struct TYPE_17__ {int num_slices; TYPE_5__** slices; } ;
typedef int MemoryContext ;
typedef int List ;
typedef TYPE_4__ DimensionVec ;
typedef TYPE_5__ DimensionSlice ;
typedef TYPE_6__ ChunkConstraints ;
typedef TYPE_7__ ChunkConstraint ;
typedef TYPE_8__ Chunk ;


 int BackwardScanDirection ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 int * lappend (int *,TYPE_8__*) ;
 int ts_chunk_constraint_scan_by_chunk_id (int ,int,int ) ;
 int ts_chunk_constraint_scan_by_dimension_slice_id (int ,TYPE_6__*,int ) ;
 TYPE_6__* ts_chunk_constraints_alloc (int,int ) ;
 TYPE_8__* ts_chunk_get_by_id (int ,int ,int) ;
 TYPE_4__* ts_dimension_slice_scan_by_dimension_before_point (int ,int ,int,int ,int ) ;
 int ts_hypercube_from_constraints (int ,int ) ;

List *
ts_chunk_get_window(int32 dimension_id, int64 point, int count, MemoryContext mctx)
{
 List *chunks = NIL;
 DimensionVec *dimvec;
 int i;


 dimvec = ts_dimension_slice_scan_by_dimension_before_point(dimension_id,
                  point,
                  count,
                  BackwardScanDirection,
                  mctx);






 for (i = 0; i < dimvec->num_slices; i++)
 {
  DimensionSlice *slice = dimvec->slices[i];
  ChunkConstraints *ccs = ts_chunk_constraints_alloc(1, mctx);
  int j;

  ts_chunk_constraint_scan_by_dimension_slice_id(slice->fd.id, ccs, mctx);


  for (j = 0; j < ccs->num_constraints; j++)
  {
   ChunkConstraint *cc = &ccs->constraints[j];
   Chunk *chunk = ts_chunk_get_by_id(cc->fd.chunk_id, 0, 1);
   MemoryContext old;

   chunk->constraints = ts_chunk_constraint_scan_by_chunk_id(chunk->fd.id, 1, mctx);
   chunk->cube = ts_hypercube_from_constraints(chunk->constraints, mctx);


   old = MemoryContextSwitchTo(mctx);
   chunks = lappend(chunks, chunk);
   MemoryContextSwitchTo(old);
  }
 }

 return chunks;
}
