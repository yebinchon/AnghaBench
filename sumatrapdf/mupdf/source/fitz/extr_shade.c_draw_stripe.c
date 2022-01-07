
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tensor_patch ;
struct TYPE_4__ {int ncomp; } ;
typedef TYPE_1__ fz_mesh_processor ;
typedef int fz_context ;


 int split_stripe (int *,int *,int *,int ) ;
 int triangulate_patch (int *,TYPE_1__*,int *) ;

__attribute__((used)) static void
draw_stripe(fz_context *ctx, fz_mesh_processor *painter, tensor_patch *p, int depth)
{
 tensor_patch s0, s1;


 split_stripe(p, &s0, &s1, painter->ncomp);

 depth--;
 if (depth == 0)
 {

  triangulate_patch(ctx, painter, &s1);
  triangulate_patch(ctx, painter, &s0);
 }
 else
 {

  draw_stripe(ctx, painter, &s1, depth);
  draw_stripe(ctx, painter, &s0, depth);
 }
}
