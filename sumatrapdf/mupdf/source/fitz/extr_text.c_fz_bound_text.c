
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_26__ {int f; int e; } ;
struct TYPE_23__ {int len; TYPE_1__* items; int font; TYPE_5__ trm; struct TYPE_23__* next; } ;
typedef TYPE_2__ fz_text_span ;
struct TYPE_24__ {TYPE_2__* head; } ;
typedef TYPE_3__ fz_text ;
typedef int fz_stroke_state ;
struct TYPE_25__ {int x0; int y0; int x1; int y1; } ;
typedef TYPE_4__ fz_rect ;
typedef TYPE_5__ fz_matrix ;
typedef int fz_context ;
struct TYPE_22__ {scalar_t__ gid; int y; int x; } ;


 TYPE_4__ fz_adjust_rect_for_stroke (int *,TYPE_4__,int const*,TYPE_5__) ;
 TYPE_4__ fz_bound_glyph (int *,int ,scalar_t__,TYPE_5__) ;
 TYPE_5__ fz_concat (TYPE_5__,TYPE_5__) ;
 TYPE_4__ fz_empty_rect ;
 int fz_is_empty_rect (TYPE_4__) ;
 TYPE_4__ fz_union_rect (TYPE_4__,TYPE_4__) ;

fz_rect
fz_bound_text(fz_context *ctx, const fz_text *text, const fz_stroke_state *stroke, fz_matrix ctm)
{
 fz_text_span *span;
 fz_matrix tm, trm;
 fz_rect gbox;
 fz_rect bbox;
 int i;

 bbox = fz_empty_rect;

 for (span = text->head; span; span = span->next)
 {
  if (span->len > 0)
  {
   tm = span->trm;
   for (i = 0; i < span->len; i++)
   {
    if (span->items[i].gid >= 0)
    {
     tm.e = span->items[i].x;
     tm.f = span->items[i].y;
     trm = fz_concat(tm, ctm);
     gbox = fz_bound_glyph(ctx, span->font, span->items[i].gid, trm);
     bbox = fz_union_rect(bbox, gbox);
    }
   }
  }
 }

 if (!fz_is_empty_rect(bbox))
 {
  if (stroke)
   bbox = fz_adjust_rect_for_stroke(ctx, bbox, stroke, ctm);


  bbox.x0 -= 1;
  bbox.y0 -= 1;
  bbox.x1 += 1;
  bbox.y1 += 1;
 }

 return bbox;
}
