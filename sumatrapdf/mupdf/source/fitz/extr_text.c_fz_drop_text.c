
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* items; int font; struct TYPE_6__* next; struct TYPE_6__* head; int refs; } ;
typedef TYPE_1__ fz_text_span ;
typedef TYPE_1__ fz_text ;
typedef int fz_context ;


 int fz_drop_font (int *,int ) ;
 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_text(fz_context *ctx, const fz_text *textc)
{
 fz_text *text = (fz_text *)textc;

 if (fz_drop_imp(ctx, text, &text->refs))
 {
  fz_text_span *span = text->head;
  while (span)
  {
   fz_text_span *next = span->next;
   fz_drop_font(ctx, span->font);
   fz_free(ctx, span->items);
   fz_free(ctx, span);
   span = next;
  }
  fz_free(ctx, text);
 }
}
