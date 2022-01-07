
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ f; scalar_t__ e; } ;
struct TYPE_11__ {int len; int wmode; TYPE_1__* items; TYPE_3__ trm; int * font; } ;
typedef TYPE_2__ fz_text_span ;
typedef int fz_stext_device ;
typedef TYPE_3__ fz_matrix ;
typedef int fz_font ;
typedef int fz_context ;
struct TYPE_10__ {scalar_t__ gid; int ucs; scalar_t__ y; scalar_t__ x; } ;


 int fz_add_stext_char (int *,int *,int *,int ,scalar_t__,TYPE_3__,float,int ) ;
 float fz_advance_glyph (int *,int *,scalar_t__,int ) ;
 TYPE_3__ fz_concat (TYPE_3__,TYPE_3__) ;

__attribute__((used)) static void
fz_stext_extract(fz_context *ctx, fz_stext_device *dev, fz_text_span *span, fz_matrix ctm)
{
 fz_font *font = span->font;
 fz_matrix tm = span->trm;
 fz_matrix trm;
 float adv;
 int i;

 if (span->len == 0)
  return;

 tm.e = 0;
 tm.f = 0;
 trm = fz_concat(tm, ctm);

 for (i = 0; i < span->len; i++)
 {

  tm.e = span->items[i].x;
  tm.f = span->items[i].y;
  trm = fz_concat(tm, ctm);


  if (span->items[i].gid >= 0)
   adv = fz_advance_glyph(ctx, font, span->items[i].gid, span->wmode);
  else
   adv = 0;

  fz_add_stext_char(ctx, dev, font, span->items[i].ucs, span->items[i].gid, trm, adv, span->wmode);
 }
}
