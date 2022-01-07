
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ text_as_text; int id; int * out; } ;
typedef TYPE_1__ svg_device ;
struct TYPE_17__ {struct TYPE_17__* next; } ;
typedef TYPE_2__ fz_text_span ;
struct TYPE_18__ {TYPE_2__* head; } ;
typedef TYPE_3__ fz_text ;
struct TYPE_19__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
typedef TYPE_4__ fz_rect ;
typedef int fz_output ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int font ;


 int * end_def (int *,TYPE_1__*) ;
 TYPE_4__ fz_bound_text (int *,TYPE_3__ const*,int *,int ) ;
 int fz_default_color_params ;
 int fz_device_rgb (int *) ;
 int fz_write_printf (int *,int *,char*,...) ;
 int * start_def (int *,TYPE_1__*) ;
 int svg_dev_fill_color (int *,TYPE_1__*,int ,float*,int,int ) ;
 int svg_dev_text_span (int *,TYPE_1__*,int ,TYPE_2__*) ;
 int * svg_dev_text_span_as_paths_defs (int *,int *,TYPE_2__*,int ) ;
 int svg_dev_text_span_as_paths_fill (int *,int *,TYPE_2__*,int ,int ,float*,float,int *,int ) ;

__attribute__((used)) static void
svg_dev_clip_text(fz_context *ctx, fz_device *dev, const fz_text *text, fz_matrix ctm, fz_rect scissor)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out = sdev->out;

 fz_rect bounds;
 int num = sdev->id++;
 float white[3] = { 1, 1, 1 };
 font *fnt;
 fz_text_span *span;

 bounds = fz_bound_text(ctx, text, ((void*)0), ctm);

 out = start_def(ctx, sdev);
 fz_write_printf(ctx, out, "<mask id=\"ma%d\" x=\"%g\" y=\"%g\" width=\"%g\" height=\"%g\"",
   num, bounds.x0, bounds.y0, bounds.x1 - bounds.x0, bounds.y1 - bounds.y0);
 fz_write_printf(ctx, out, " maskUnits=\"userSpaceOnUse\" maskContentUnits=\"userSpaceOnUse\">\n");
 if (sdev->text_as_text)
 {
  for (span = text->head; span; span = span->next)
  {
   fz_write_printf(ctx, out, "<text");
   svg_dev_fill_color(ctx, sdev, fz_device_rgb(ctx), white, 1, fz_default_color_params);
   svg_dev_text_span(ctx, sdev, ctm, span);
  }
 }
 else
 {
  for (span = text->head; span; span = span->next)
  {
   fnt = svg_dev_text_span_as_paths_defs(ctx, dev, span, ctm);
   svg_dev_text_span_as_paths_fill(ctx, dev, span, ctm, fz_device_rgb(ctx), white, 1.0f, fnt, fz_default_color_params);
  }
 }
 fz_write_printf(ctx, out, "</mask>\n");
 out = end_def(ctx, sdev);
 fz_write_printf(ctx, out, "<g mask=\"url(#ma%d)\">\n", num);
}
