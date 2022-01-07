
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* space; } ;
struct TYPE_12__ {int * coordinates; } ;
struct TYPE_11__ {int num_dimensions; TYPE_2__* dimensions; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
typedef TYPE_4__ Point ;
typedef int DimensionVec ;
typedef TYPE_5__ ChunkScanCtx ;


 int dimension_slice_and_chunk_constraint_join (TYPE_5__*,int *) ;
 int * dimension_slice_scan (int ,int ) ;

__attribute__((used)) static void
chunk_point_scan(ChunkScanCtx *scanctx, Point *p)
{
 int i;


 for (i = 0; i < scanctx->space->num_dimensions; i++)
 {
  DimensionVec *vec;

  vec = dimension_slice_scan(scanctx->space->dimensions[i].fd.id, p->coordinates[i]);

  dimension_slice_and_chunk_constraint_join(scanctx, vec);
 }
}
