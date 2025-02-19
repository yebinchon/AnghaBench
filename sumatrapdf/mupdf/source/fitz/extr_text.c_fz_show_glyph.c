
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {size_t len; TYPE_1__* items; } ;
typedef TYPE_2__ fz_text_span ;
typedef int fz_text_language ;
struct TYPE_13__ {int refs; } ;
typedef TYPE_3__ fz_text ;
struct TYPE_14__ {int f; int e; } ;
typedef TYPE_4__ fz_matrix ;
typedef int fz_font ;
typedef int fz_context ;
typedef int fz_bidi_direction ;
struct TYPE_11__ {int ucs; int gid; int y; int x; } ;


 int FZ_ERROR_GENERIC ;
 TYPE_2__* fz_add_text_span (int *,TYPE_3__*,int *,int,int,int ,int ,TYPE_4__) ;
 int fz_grow_text_span (int *,TYPE_2__*,int) ;
 int fz_throw (int *,int ,char*) ;

void
fz_show_glyph(fz_context *ctx, fz_text *text, fz_font *font, fz_matrix trm, int gid, int ucs, int wmode, int bidi_level, fz_bidi_direction markup_dir, fz_text_language lang)
{
 fz_text_span *span;

 if (text->refs != 1)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot modify shared text objects");

 span = fz_add_text_span(ctx, text, font, wmode, bidi_level, markup_dir, lang, trm);

 fz_grow_text_span(ctx, span, 1);

 span->items[span->len].ucs = ucs;
 span->items[span->len].gid = gid;
 span->items[span->len].x = trm.e;
 span->items[span->len].y = trm.f;
 span->len++;
}
