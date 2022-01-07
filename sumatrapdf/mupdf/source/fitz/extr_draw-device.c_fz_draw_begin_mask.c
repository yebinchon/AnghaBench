
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int fz_rect ;
typedef int fz_pixmap ;
typedef int fz_irect ;
struct TYPE_7__ {int scissor; int * group_alpha; int * shape; int * dest; scalar_t__ blendmode; } ;
typedef TYPE_1__ fz_draw_state ;
struct TYPE_8__ {scalar_t__ top; int transform; int default_cs; scalar_t__ resolve_spots; } ;
typedef TYPE_2__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 int dump_spaces (scalar_t__,char*) ;
 int fz_clear_pixmap (int *,int *) ;
 int fz_clear_pixmap_with_value (int *,int *,int) ;
 int fz_convert_color (int *,int *,float const*,int *,float*,int *,int ) ;
 int * fz_default_colorspace (int *,int ,int *) ;
 int * fz_device_gray (int *) ;
 int fz_intersect_irect (int ,int ) ;
 int fz_irect_from_rect (int ) ;
 int * fz_new_pixmap_with_bbox (int *,int *,int ,int *,int) ;
 int fz_transform_rect (int ,int ) ;
 TYPE_1__* push_group_for_separations (int *,TYPE_2__*,int ,int ) ;
 TYPE_1__* push_stack (int *,TYPE_2__*,char*) ;

__attribute__((used)) static void
fz_draw_begin_mask(fz_context *ctx, fz_device *devp, fz_rect area, int luminosity, fz_colorspace *colorspace_in, const float *colorfv, fz_color_params color_params)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 fz_pixmap *dest;
 fz_irect bbox;
 fz_draw_state *state = push_stack(ctx, dev, "mask");
 fz_pixmap *shape = state->shape;
 fz_pixmap *group_alpha = state->group_alpha;
 fz_rect trect;
 fz_colorspace *colorspace = ((void*)0);

 if (dev->top == 0 && dev->resolve_spots)
  state = push_group_for_separations(ctx, dev, color_params, dev->default_cs);

 if (colorspace_in)
  colorspace = fz_default_colorspace(ctx, dev->default_cs, colorspace_in);

 trect = fz_transform_rect(area, dev->transform);
 bbox = fz_intersect_irect(fz_irect_from_rect(trect), state->scissor);



 state[1].blendmode = 0;




 if (luminosity)
  state[1].dest = dest = fz_new_pixmap_with_bbox(ctx, fz_device_gray(ctx), bbox, ((void*)0), 0);
 else
  state[1].dest = dest = fz_new_pixmap_with_bbox(ctx, ((void*)0), bbox, ((void*)0), 1);
 if (state->shape)
 {






  state[1].shape = shape = ((void*)0);
 }
 if (state->group_alpha)
 {
  state[1].group_alpha = group_alpha = ((void*)0);
 }

 if (luminosity)
 {
  float bc;
  if (!colorspace)
   colorspace = fz_device_gray(ctx);
  fz_convert_color(ctx, colorspace, colorfv, fz_device_gray(ctx), &bc, ((void*)0), color_params);
  fz_clear_pixmap_with_value(ctx, dest, bc * 255);
  if (shape)
   fz_clear_pixmap_with_value(ctx, shape, 255);
  if (group_alpha)
   fz_clear_pixmap_with_value(ctx, group_alpha, 255);
 }
 else
 {
  fz_clear_pixmap(ctx, dest);
  if (shape)
   fz_clear_pixmap(ctx, shape);
  if (group_alpha)
   fz_clear_pixmap(ctx, group_alpha);
 }




 state[1].scissor = bbox;
}
