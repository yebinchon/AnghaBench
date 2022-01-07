
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stroke_state ;
typedef int fz_rasterizer ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_irect ;
typedef int fz_context ;


 int do_flatten_stroke (int *,int *,int const*,int const*,int ,float,float,int const*,int *) ;
 int fz_postindex_rasterizer (int *,int *) ;
 scalar_t__ fz_reset_rasterizer (int *,int *,int const) ;

int
fz_flatten_stroke_path(fz_context *ctx, fz_rasterizer *rast, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm, float flatness, float linewidth, const fz_irect *scissor, fz_irect *bbox)
{
 if (fz_reset_rasterizer(ctx, rast, *scissor))
 {
  if (do_flatten_stroke(ctx, rast, path, stroke, ctm, flatness, linewidth, scissor, bbox))
   return 1;
  fz_postindex_rasterizer(ctx, rast);
  bbox = ((void*)0);
 }

 return do_flatten_stroke(ctx, rast, path, stroke, ctm, flatness, linewidth, scissor, bbox);
}
