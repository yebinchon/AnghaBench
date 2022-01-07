
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_rect ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int FZ_CMD_BEGIN_MASK ;
 int fz_append_display_node (int *,int *,int ,int,int *,int *,float const*,int *,int *,int *,int *,int *,int ) ;
 int fz_pack_color_params (int ) ;

__attribute__((used)) static void
fz_list_begin_mask(fz_context *ctx, fz_device *dev, fz_rect rect, int luminosity, fz_colorspace *colorspace, const float *color, fz_color_params color_params)
{
 fz_append_display_node(
  ctx,
  dev,
  FZ_CMD_BEGIN_MASK,
  (!!luminosity) | fz_pack_color_params(color_params),
  &rect,
  ((void*)0),
  color,
  colorspace,
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  0);
}
