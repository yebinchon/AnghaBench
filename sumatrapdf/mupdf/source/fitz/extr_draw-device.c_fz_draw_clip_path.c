
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int fz_rect ;
typedef int fz_rasterizer ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef void* fz_irect ;
struct TYPE_10__ {void* scissor; int * mask; int * group_alpha; int * shape; TYPE_7__* dest; } ;
typedef TYPE_1__ fz_draw_state ;
struct TYPE_11__ {size_t top; int default_cs; int transform; scalar_t__ resolve_spots; TYPE_1__* stack; int * rast; } ;
typedef TYPE_2__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
struct TYPE_12__ {int alpha; int * seps; int * colorspace; } ;


 float FLT_EPSILON ;
 int dump_spaces (int,char*) ;
 int fz_clear_pixmap (int *,int *) ;
 int fz_concat (int ,int ) ;
 int fz_convert_rasterizer (int *,int *,int,int *,int *,int ) ;
 int fz_copy_pixmap_rect (int *,TYPE_7__*,TYPE_7__*,void*,int ) ;
 int fz_default_color_params ;
 scalar_t__ fz_flatten_fill_path (int *,int *,int const*,int ,float,void**,void**) ;
 void* fz_intersect_irect (void*,void*) ;
 void* fz_irect_from_rect (int ) ;
 int fz_is_infinite_rect (int ) ;
 scalar_t__ fz_is_rect_rasterizer (int *,int *) ;
 float fz_matrix_expansion (int ) ;
 void* fz_new_pixmap_with_bbox (int *,int *,void*,int *,int) ;
 void* fz_pixmap_bbox (int *,TYPE_7__*) ;
 int fz_transform_rect (int ,int ) ;
 TYPE_1__* push_group_for_separations (int *,TYPE_2__*,int ,int ) ;
 TYPE_1__* push_stack (int *,TYPE_2__*,char*) ;

__attribute__((used)) static void
fz_draw_clip_path(fz_context *ctx, fz_device *devp, const fz_path *path, int even_odd, fz_matrix in_ctm, fz_rect scissor)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 fz_matrix ctm = fz_concat(in_ctm, dev->transform);
 fz_rasterizer *rast = dev->rast;

 float expansion = fz_matrix_expansion(ctm);
 float flatness;
 fz_irect bbox;
 fz_draw_state *state = &dev->stack[dev->top];
 fz_colorspace *model;

 if (dev->top == 0 && dev->resolve_spots)
  state = push_group_for_separations(ctx, dev, fz_default_color_params , dev->default_cs);

 if (expansion < FLT_EPSILON)
  expansion = 1;
 flatness = 0.3f / expansion;
 if (flatness < 0.001f)
  flatness = 0.001f;

 state = push_stack(ctx, dev, "clip path");

 model = state->dest->colorspace;

 if (!fz_is_infinite_rect(scissor))
 {
  bbox = fz_irect_from_rect(fz_transform_rect(scissor, dev->transform));
  bbox = fz_intersect_irect(bbox, fz_pixmap_bbox(ctx, state->dest));
  bbox = fz_intersect_irect(bbox, state->scissor);
 }
 else
 {
  bbox = fz_intersect_irect(fz_pixmap_bbox(ctx, state->dest), state->scissor);
 }

 if (fz_flatten_fill_path(ctx, rast, path, ctm, flatness, &bbox, &bbox) || fz_is_rect_rasterizer(ctx, rast))
 {
  state[1].scissor = bbox;
  state[1].mask = ((void*)0);



  return;
 }

 state[1].mask = fz_new_pixmap_with_bbox(ctx, ((void*)0), bbox, ((void*)0), 1);
 fz_clear_pixmap(ctx, state[1].mask);
 state[1].dest = fz_new_pixmap_with_bbox(ctx, model, bbox, state[0].dest->seps, state[0].dest->alpha);
 fz_copy_pixmap_rect(ctx, state[1].dest, state[0].dest, bbox, dev->default_cs);
 if (state[1].shape)
 {
  state[1].shape = fz_new_pixmap_with_bbox(ctx, ((void*)0), bbox, ((void*)0), 1);
  fz_clear_pixmap(ctx, state[1].shape);
 }
 if (state[1].group_alpha)
 {
  state[1].group_alpha = fz_new_pixmap_with_bbox(ctx, ((void*)0), bbox, ((void*)0), 1);
  fz_clear_pixmap(ctx, state[1].group_alpha);
 }

 fz_convert_rasterizer(ctx, rast, even_odd, state[1].mask, ((void*)0), 0);

 state[1].scissor = bbox;




}
