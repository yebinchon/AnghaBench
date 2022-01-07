
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int reusable; } ;
struct TYPE_19__ {TYPE_2__ fns; } ;
typedef TYPE_3__ fz_rasterizer ;
typedef int fz_path ;
struct TYPE_17__ {int member_0; } ;
struct TYPE_20__ {TYPE_1__ member_0; } ;
typedef TYPE_4__ fz_overprint ;
typedef int fz_matrix ;
typedef int fz_irect ;
struct TYPE_21__ {int blendmode; scalar_t__ group_alpha; scalar_t__ shape; scalar_t__ dest; int scissor; } ;
typedef TYPE_5__ fz_draw_state ;
struct TYPE_22__ {size_t top; int default_cs; scalar_t__ resolve_spots; TYPE_5__* stack; TYPE_3__* rast; int transform; } ;
typedef TYPE_6__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 float FLT_EPSILON ;
 int FZ_BLEND_KNOCKOUT ;
 int FZ_MAX_COLORS ;
 int fz_concat (int ,int ) ;
 int fz_convert_rasterizer (int *,TYPE_3__*,int,scalar_t__,unsigned char*,TYPE_4__*) ;
 int * fz_default_colorspace (int *,int ,int *) ;
 scalar_t__ fz_flatten_fill_path (int *,TYPE_3__*,int const*,int ,float,int *,int *) ;
 int fz_intersect_irect (int ,int ) ;
 TYPE_5__* fz_knockout_begin (int *,TYPE_6__*) ;
 int fz_knockout_end (int *,TYPE_6__*) ;
 float fz_matrix_expansion (int ) ;
 int fz_pixmap_bbox (int *,scalar_t__) ;
 TYPE_5__* push_group_for_separations (int *,TYPE_6__*,int ,int ) ;
 TYPE_4__* resolve_color (int *,TYPE_4__*,float const*,int *,float,int ,unsigned char*,scalar_t__) ;

__attribute__((used)) static void
fz_draw_fill_path(fz_context *ctx, fz_device *devp, const fz_path *path, int even_odd, fz_matrix in_ctm,
 fz_colorspace *colorspace_in, const float *color, float alpha, fz_color_params color_params)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 fz_matrix ctm = fz_concat(in_ctm, dev->transform);
 fz_rasterizer *rast = dev->rast;
 fz_colorspace *colorspace = fz_default_colorspace(ctx, dev->default_cs, colorspace_in);
 float expansion = fz_matrix_expansion(ctm);
 float flatness;
 unsigned char colorbv[FZ_MAX_COLORS + 1];
 fz_irect bbox;
 fz_draw_state *state = &dev->stack[dev->top];
 fz_overprint op = { { 0 } };
 fz_overprint *eop;

 if (dev->top == 0 && dev->resolve_spots)
  state = push_group_for_separations(ctx, dev, color_params, dev->default_cs);

 if (expansion < FLT_EPSILON)
  expansion = 1;
 flatness = 0.3f / expansion;
 if (flatness < 0.001f)
  flatness = 0.001f;

 bbox = fz_intersect_irect(fz_pixmap_bbox(ctx, state->dest), state->scissor);
 if (fz_flatten_fill_path(ctx, rast, path, ctm, flatness, &bbox, &bbox))
  return;

 if (state->blendmode & FZ_BLEND_KNOCKOUT)
  state = fz_knockout_begin(ctx, dev);

 eop = resolve_color(ctx, &op, color, colorspace, alpha, color_params, colorbv, state->dest);

 fz_convert_rasterizer(ctx, rast, even_odd, state->dest, colorbv, eop);
 if (state->shape)
 {
  if (!rast->fns.reusable)
   fz_flatten_fill_path(ctx, rast, path, ctm, flatness, &bbox, ((void*)0));

  colorbv[0] = 255;
  fz_convert_rasterizer(ctx, rast, even_odd, state->shape, colorbv, 0);
 }
 if (state->group_alpha)
 {
  if (!rast->fns.reusable)
   fz_flatten_fill_path(ctx, rast, path, ctm, flatness, &bbox, ((void*)0));

  colorbv[0] = alpha * 255;
  fz_convert_rasterizer(ctx, rast, even_odd, state->group_alpha, colorbv, 0);
 }

 if (state->blendmode & FZ_BLEND_KNOCKOUT)
  fz_knockout_end(ctx, dev);
}
