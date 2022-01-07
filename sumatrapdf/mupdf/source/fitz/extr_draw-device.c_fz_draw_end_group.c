
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
struct TYPE_19__ {float alpha; int blendmode; TYPE_1__* dest; TYPE_1__* group_alpha; TYPE_1__* shape; } ;
typedef TYPE_2__ fz_draw_state ;
struct TYPE_20__ {scalar_t__ top; int default_cs; } ;
typedef TYPE_3__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;


 int FZ_BLEND_ISOLATED ;
 int FZ_BLEND_KNOCKOUT ;
 int FZ_BLEND_MODEMASK ;
 int FZ_ERROR_GENERIC ;
 int assert (int) ;
 int dump_spaces (scalar_t__,char*) ;
 int fz_blend_pixmap (int *,TYPE_1__*,TYPE_1__*,float,int,int,TYPE_1__*) ;
 TYPE_1__* fz_convert_pixmap (int *,TYPE_1__*,scalar_t__,int *,int ,int ,int) ;
 int fz_default_color_params ;
 int fz_drop_pixmap (int *,TYPE_1__*) ;
 int fz_dump_blend (int *,char*,TYPE_1__*) ;
 int fz_knockout_end (int *,TYPE_3__*) ;
 int fz_paint_pixmap (TYPE_1__*,TYPE_1__*,int) ;
 int fz_paint_pixmap_alpha (TYPE_1__*,TYPE_1__*,int) ;
 int fz_throw (int *,int ,char*) ;
 TYPE_2__* pop_stack (int *,TYPE_3__*,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
fz_draw_end_group(fz_context *ctx, fz_device *devp)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 int blendmode;
 int isolated;
 float alpha;
 fz_draw_state *state;

 if (dev->top == 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "unexpected end group");

 state = pop_stack(ctx, dev, "group");

 alpha = state[1].alpha;
 blendmode = state[1].blendmode & FZ_BLEND_MODEMASK;
 isolated = state[1].blendmode & FZ_BLEND_ISOLATED;
 if (state[0].dest->colorspace != state[1].dest->colorspace)
 {
  fz_pixmap *converted = fz_convert_pixmap(ctx, state[1].dest, state[0].dest->colorspace, ((void*)0), dev->default_cs, fz_default_color_params, 1);
  fz_drop_pixmap(ctx, state[1].dest);
  state[1].dest = converted;
 }

 if ((blendmode == 0) && (state[0].shape == state[1].shape) && (state[0].group_alpha == state[1].group_alpha))
  fz_paint_pixmap(state[0].dest, state[1].dest, alpha * 255);
 else
  fz_blend_pixmap(ctx, state[0].dest, state[1].dest, alpha * 255, blendmode, isolated, state[1].group_alpha);

 if (state[0].shape != state[1].shape)
 {


  if (state[0].shape)
  {
   if (state[1].shape)
    fz_paint_pixmap(state[0].shape, state[1].shape, alpha * 255);
   else
    fz_paint_pixmap_alpha(state[0].shape, state[1].dest, alpha * 255);
  }
 }
 assert(state[0].group_alpha == ((void*)0) || state[0].group_alpha != state[1].group_alpha);
 if (state[0].group_alpha && state[0].group_alpha != state[1].group_alpha)
 {




  if (state[1].group_alpha)
   fz_paint_pixmap(state[0].group_alpha, state[1].group_alpha, isolated ? 255 : alpha * 255);
  else
   fz_paint_pixmap_alpha(state[0].group_alpha, state[1].dest, isolated ? 255 : alpha * 255);
 }

 assert(state[0].dest != state[1].dest);
 if (state[0].shape != state[1].shape)
 {
  fz_drop_pixmap(ctx, state[1].shape);
  state[1].shape = ((void*)0);
 }
 fz_drop_pixmap(ctx, state[1].group_alpha);
 state[1].group_alpha = ((void*)0);
 fz_drop_pixmap(ctx, state[1].dest);
 state[1].dest = ((void*)0);

 if (state[0].blendmode & FZ_BLEND_KNOCKOUT)
  fz_knockout_end(ctx, dev);
}
