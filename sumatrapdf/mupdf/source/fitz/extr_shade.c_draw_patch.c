
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tensor_patch ;
struct TYPE_4__ {int ncomp; } ;
typedef TYPE_1__ fz_mesh_processor ;
typedef int fz_context ;


 int draw_stripe (int *,TYPE_1__*,int *,int) ;
 int split_patch (int *,int *,int *,int ) ;

__attribute__((used)) static void
draw_patch(fz_context *ctx, fz_mesh_processor *painter, tensor_patch *p, int depth, int origdepth)
{
 tensor_patch s0, s1;


 split_patch(p, &s0, &s1, painter->ncomp);

 depth--;
 if (depth == 0)
 {

  draw_stripe(ctx, painter, &s0, origdepth);
  draw_stripe(ctx, painter, &s1, origdepth);
 }
 else
 {

  draw_patch(ctx, painter, &s0, depth, origdepth);
  draw_patch(ctx, painter, &s1, depth, origdepth);
 }
}
