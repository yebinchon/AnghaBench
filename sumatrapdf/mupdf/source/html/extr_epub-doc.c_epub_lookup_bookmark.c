
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_location ;
typedef int fz_html ;
typedef int fz_document ;
typedef int fz_context ;
typedef int fz_bookmark ;
struct TYPE_5__ {TYPE_2__* spine; } ;
typedef TYPE_1__ epub_document ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ epub_chapter ;


 int * epub_get_laid_out_html (int *,TYPE_1__*,TYPE_2__*) ;
 int fz_drop_html (int *,int *) ;
 int fz_lookup_html_bookmark (int *,int *,int ) ;
 int fz_make_location (int,int) ;

__attribute__((used)) static fz_location
epub_lookup_bookmark(fz_context *ctx, fz_document *doc_, fz_bookmark mark)
{
 epub_document *doc = (epub_document*)doc_;
 epub_chapter *ch;
 int i;

 for (i = 0, ch = doc->spine; ch; ++i, ch = ch->next)
 {
  fz_html *html = epub_get_laid_out_html(ctx, doc, ch);
  int p = fz_lookup_html_bookmark(ctx, html, mark);
  fz_drop_html(ctx, html);
  if (p != -1)
   return fz_make_location(i, p);
 }
 return fz_make_location(-1, -1);
}
