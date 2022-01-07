
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {int constraints; int cube; TYPE_1__ fd; } ;
typedef int ScanKeyData ;
typedef int MemoryContext ;
typedef TYPE_2__ Chunk ;


 int AccessShareLock ;
 int ERROR ;
 int ForwardScanDirection ;
 TYPE_2__* MemoryContextAllocZero (int ,int) ;
 int chunk_scan_internal (int,int *,int,int ,TYPE_2__*,int,int ,int ,int ) ;
 int chunk_tuple_found ;
 int elog (int ,char*,...) ;
 int pfree (TYPE_2__*) ;
 int ts_chunk_constraint_scan_by_chunk_id (int ,int ,int ) ;
 int ts_hypercube_from_constraints (int ,int ) ;

__attribute__((used)) static Chunk *
chunk_scan_find(int indexid, ScanKeyData scankey[], int nkeys, int16 num_constraints,
    MemoryContext mctx, bool fail_if_not_found)
{
 Chunk *chunk = MemoryContextAllocZero(mctx, sizeof(Chunk));
 int num_found;

 num_found = chunk_scan_internal(indexid,
         scankey,
         nkeys,
         chunk_tuple_found,
         chunk,
         1,
         ForwardScanDirection,
         AccessShareLock,
         mctx);

 switch (num_found)
 {
  case 0:
   if (fail_if_not_found)
    elog(ERROR, "chunk not found");
   pfree(chunk);
   chunk = ((void*)0);
   break;
  case 1:
   if (num_constraints > 0)
   {
    chunk->constraints =
     ts_chunk_constraint_scan_by_chunk_id(chunk->fd.id, num_constraints, mctx);
    chunk->cube = ts_hypercube_from_constraints(chunk->constraints, mctx);
   }
   break;
  default:
   elog(ERROR, "unexpected number of chunks found: %d", num_found);
 }

 return chunk;
}
