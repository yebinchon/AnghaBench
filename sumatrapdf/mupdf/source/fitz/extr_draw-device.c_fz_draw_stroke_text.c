
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_31__ {scalar_t__ f; scalar_t__ e; } ;
struct TYPE_28__ {int len; int font; TYPE_2__* items; TYPE_6__ trm; struct TYPE_28__* next; } ;
typedef TYPE_3__ fz_text_span ;
struct TYPE_29__ {TYPE_3__* head; } ;
typedef TYPE_4__ fz_text ;
typedef int fz_stroke_state ;
typedef int fz_path ;
struct TYPE_26__ {int member_0; } ;
struct TYPE_30__ {TYPE_1__ member_0; } ;
typedef TYPE_5__ fz_overprint ;
typedef TYPE_6__ fz_matrix ;
typedef int fz_glyph ;
struct TYPE_32__ {int blendmode; int scissor; scalar_t__ group_alpha; scalar_t__ shape; scalar_t__ dest; } ;
typedef TYPE_7__ fz_draw_state ;
struct TYPE_33__ {size_t top; int default_cs; scalar_t__ resolve_spots; int rast; TYPE_7__* stack; TYPE_6__ transform; } ;
typedef TYPE_8__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;
struct TYPE_27__ {int gid; scalar_t__ y; scalar_t__ x; } ;


 int FZ_BLEND_KNOCKOUT ;
 int FZ_MAX_COLORS ;
 int draw_glyph (unsigned char*,scalar_t__,int *,int,int,int *,TYPE_5__*) ;
 TYPE_6__ fz_concat (TYPE_6__,TYPE_6__) ;
 int * fz_default_colorspace (int *,int ,int *) ;
 int fz_draw_stroke_path (int *,int *,int *,int const*,TYPE_6__,int *,float const*,float,int ) ;
 int fz_drop_glyph (int *,int *) ;
 int fz_drop_path (int *,int *) ;
 TYPE_7__* fz_knockout_begin (int *,TYPE_8__*) ;
 int fz_knockout_end (int *,TYPE_8__*) ;
 int * fz_outline_glyph (int *,int ,int,TYPE_6__) ;
 int fz_rasterizer_text_aa_level (int ) ;
 int * fz_render_stroked_glyph (int *,int ,int,TYPE_6__*,TYPE_6__,int const*,int *,int) ;
 int fz_warn (int *,char*) ;
 TYPE_7__* push_group_for_separations (int *,TYPE_8__*,int ,int ) ;
 TYPE_5__* resolve_color (int *,TYPE_5__*,float const*,int *,float,int ,unsigned char*,scalar_t__) ;

__attribute__((used)) static void
fz_draw_stroke_text(fz_context *ctx, fz_device *devp, const fz_text *text, const fz_stroke_state *stroke,
 fz_matrix in_ctm, fz_colorspace *colorspace_in, const float *color, float alpha, fz_color_params color_params)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 fz_matrix ctm = fz_concat(in_ctm, dev->transform);
 fz_draw_state *state = &dev->stack[dev->top];
 unsigned char colorbv[FZ_MAX_COLORS + 1];
 unsigned char solid = 255;
 unsigned char alpha_byte = alpha * 255;
 fz_text_span *span;
 int i;
 fz_colorspace *colorspace = ((void*)0);
 int aa = fz_rasterizer_text_aa_level(dev->rast);
 fz_overprint op = { { 0 } };
 fz_overprint *eop;

 if (dev->top == 0 && dev->resolve_spots)
  state = push_group_for_separations(ctx, dev, color_params, dev->default_cs);

 if (colorspace_in)
  colorspace = fz_default_colorspace(ctx, dev->default_cs, colorspace_in);

 if (state->blendmode & FZ_BLEND_KNOCKOUT)
  state = fz_knockout_begin(ctx, dev);

 eop = resolve_color(ctx, &op, color, colorspace, alpha, color_params, colorbv, state->dest);

 for (span = text->head; span; span = span->next)
 {
  fz_matrix tm, trm;
  fz_glyph *glyph;
  int gid;

  tm = span->trm;

  for (i = 0; i < span->len; i++)
  {
   gid = span->items[i].gid;
   if (gid < 0)
    continue;

   tm.e = span->items[i].x;
   tm.f = span->items[i].y;
   trm = fz_concat(tm, ctm);

   glyph = fz_render_stroked_glyph(ctx, span->font, gid, &trm, ctm, stroke, &state->scissor, aa);
   if (glyph)
   {
    int x = (int)trm.e;
    int y = (int)trm.f;
    draw_glyph(colorbv, state->dest, glyph, x, y, &state->scissor, eop);
    if (state->shape)
     draw_glyph(&solid, state->shape, glyph, x, y, &state->scissor, 0);
    if (state->group_alpha)
     draw_glyph(&alpha_byte, state->group_alpha, glyph, x, y, &state->scissor, 0);
    fz_drop_glyph(ctx, glyph);
   }
   else
   {
    fz_path *path = fz_outline_glyph(ctx, span->font, gid, tm);
    if (path)
    {
     fz_draw_stroke_path(ctx, devp, path, stroke, in_ctm, colorspace, color, alpha, color_params);
     fz_drop_path(ctx, path);
    }
    else
    {
     fz_warn(ctx, "cannot render glyph");
    }
   }
  }
 }

 if (state->blendmode & FZ_BLEND_KNOCKOUT)
  fz_knockout_end(ctx, dev);
}
