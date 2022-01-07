
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * fonts; struct TYPE_5__* family; struct TYPE_5__* src; int font; struct TYPE_5__* next; struct TYPE_5__* custom; } ;
typedef TYPE_1__ fz_html_font_set ;
typedef TYPE_1__ fz_html_font_face ;
typedef int fz_context ;


 int fz_drop_font (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;
 scalar_t__ nelem (int *) ;

void fz_drop_html_font_set(fz_context *ctx, fz_html_font_set *set)
{
 fz_html_font_face *font, *next;
 int i;

 if (!set)
  return;

 font = set->custom;
 while (font)
 {
  next = font->next;
  fz_drop_font(ctx, font->font);
  fz_free(ctx, font->src);
  fz_free(ctx, font->family);
  fz_free(ctx, font);
  font = next;
 }

 for (i = 0; i < (int)nelem(set->fonts); ++i)
  fz_drop_font(ctx, set->fonts[i]);

 fz_free(ctx, set);
}
