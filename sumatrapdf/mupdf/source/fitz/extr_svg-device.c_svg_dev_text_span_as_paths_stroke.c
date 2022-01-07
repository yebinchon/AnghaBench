
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {int * out; } ;
typedef TYPE_3__ svg_device ;
struct TYPE_19__ {int d; int c; int b; int a; } ;
struct TYPE_22__ {int len; TYPE_5__* items; TYPE_1__ trm; } ;
typedef TYPE_4__ fz_text_span ;
struct TYPE_23__ {int gid; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_5__ fz_text_item ;
typedef int fz_stroke_state ;
typedef int fz_output ;
struct TYPE_24__ {int member_0; int member_3; scalar_t__ f; scalar_t__ e; int d; int c; int b; int a; int member_5; int member_4; int member_2; int member_1; } ;
typedef TYPE_6__ fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;
struct TYPE_25__ {int id; TYPE_2__* sentlist; } ;
typedef TYPE_7__ font ;
struct TYPE_20__ {scalar_t__ y_off; scalar_t__ x_off; } ;


 TYPE_6__ fz_concat (TYPE_6__,TYPE_6__) ;
 int fz_write_printf (int *,int *,char*,...) ;
 int svg_dev_ctm (int *,TYPE_3__*,TYPE_6__) ;
 int svg_dev_stroke_color (int *,TYPE_3__*,int *,float const*,float,int ) ;
 int svg_dev_stroke_state (int *,TYPE_3__*,int const*,TYPE_6__) ;

__attribute__((used)) static void
svg_dev_text_span_as_paths_stroke(fz_context *ctx, fz_device *dev, const fz_text_span *span,
 const fz_stroke_state *stroke, fz_matrix ctm,
 fz_colorspace *colorspace, const float *color, float alpha, font *fnt, fz_color_params color_params)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out = sdev->out;
 fz_matrix shift = { 1, 0, 0, 1, 0, 0};
 fz_matrix trm, mtx;
 int i;


 trm.a = span->trm.a;
 trm.b = span->trm.b;
 trm.c = span->trm.c;
 trm.d = span->trm.d;
 trm.e = 0;
 trm.f = 0;

 for (i=0; i < span->len; i++)
 {
  fz_text_item *it = &span->items[i];
  int gid = it->gid;
  if (gid < 0)
   continue;

  shift.e = fnt->sentlist[gid].x_off;
  shift.f = fnt->sentlist[gid].y_off;
  trm.e = it->x;
  trm.f = it->y;
  mtx = fz_concat(shift, fz_concat(trm, ctm));

  fz_write_printf(ctx, out, "<use xlink:href=\"#font_%x_%x\"", fnt->id, gid);
  svg_dev_stroke_state(ctx, sdev, stroke, mtx);
  svg_dev_ctm(ctx, sdev, mtx);
  svg_dev_stroke_color(ctx, sdev, colorspace, color, alpha, color_params);
  fz_write_printf(ctx, out, "/>\n");
 }
}
