
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stroke_state ;
typedef int fz_rect ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int FZ_CMD_STROKE_PATH ;
 int fz_append_display_node (int *,int *,int ,int ,int *,int const*,float const*,int *,float*,int *,int const*,int *,int ) ;
 int fz_bound_path (int *,int const*,int const*,int ) ;
 int fz_pack_color_params (int ) ;

__attribute__((used)) static void
fz_list_stroke_path(fz_context *ctx, fz_device *dev, const fz_path *path, const fz_stroke_state *stroke,
 fz_matrix ctm, fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 fz_rect rect = fz_bound_path(ctx, path, stroke, ctm);
 fz_append_display_node(
  ctx,
  dev,
  FZ_CMD_STROKE_PATH,
  fz_pack_color_params(color_params),
  &rect,
  path,
  color,
  colorspace,
  &alpha,
  &ctm,
  stroke,
  ((void*)0),
  0);
}
