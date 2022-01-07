
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_rasterizer ;
typedef int fz_path ;
typedef void* fz_matrix ;
typedef int fz_irect ;
typedef int fz_context ;
struct TYPE_6__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_5__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_7__ {float flatness; TYPE_2__ b; TYPE_1__ c; void* ctm; int * rast; } ;
typedef TYPE_3__ flatten_arg ;


 int flatten_proc ;
 int fz_bound_rasterizer (int *,int *) ;
 int fz_gap_rasterizer (int *,int *) ;
 int fz_intersect_irect (int ,int const) ;
 int fz_is_empty_irect (int ) ;
 int fz_postindex_rasterizer (int *,int *) ;
 scalar_t__ fz_reset_rasterizer (int *,int *,int const) ;
 int fz_walk_path (int *,int const*,int *,TYPE_3__*) ;
 int line (int *,int *,void*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

int
fz_flatten_fill_path(fz_context *ctx, fz_rasterizer *rast, const fz_path *path, fz_matrix ctm, float flatness, const fz_irect *scissor, fz_irect *bbox)
{
 flatten_arg arg;

 if (fz_reset_rasterizer(ctx, rast, *scissor))
 {
  arg.rast = rast;
  arg.ctm = ctm;
  arg.flatness = flatness;
  arg.b.x = arg.b.y = arg.c.x = arg.c.y = 0;

  fz_walk_path(ctx, path, &flatten_proc, &arg);
  if (arg.c.x != arg.b.x || arg.c.y != arg.b.y)
   line(ctx, rast, ctm, arg.c.x, arg.c.y, arg.b.x, arg.b.y);

  fz_gap_rasterizer(ctx, rast);

  fz_postindex_rasterizer(ctx, rast);
 }

 arg.rast = rast;
 arg.ctm = ctm;
 arg.flatness = flatness;
 arg.b.x = arg.b.y = arg.c.x = arg.c.y = 0;

 fz_walk_path(ctx, path, &flatten_proc, &arg);
 if (arg.c.x != arg.b.x || arg.c.y != arg.b.y)
  line(ctx, rast, ctm, arg.c.x, arg.c.y, arg.b.x, arg.b.y);

 fz_gap_rasterizer(ctx, rast);

 if (!bbox)
  return 0;

 *bbox = fz_bound_rasterizer(ctx, rast);
 return fz_is_empty_irect(fz_intersect_irect(*bbox, *scissor));
}
