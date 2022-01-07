
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int chapter; int page; } ;
typedef TYPE_1__ fz_location ;
typedef int fz_html ;
typedef int fz_document ;
typedef int fz_context ;
typedef int fz_bookmark ;
struct TYPE_8__ {TYPE_3__* spine; } ;
typedef TYPE_2__ epub_document ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_3__ epub_chapter ;


 int * epub_get_laid_out_html (int *,TYPE_2__*,TYPE_3__*) ;
 int fz_drop_html (int *,int *) ;
 int fz_make_html_bookmark (int *,int *,int ) ;

__attribute__((used)) static fz_bookmark
epub_make_bookmark(fz_context *ctx, fz_document *doc_, fz_location loc)
{
 epub_document *doc = (epub_document*)doc_;
 epub_chapter *ch;
 int i;

 for (i = 0, ch = doc->spine; ch; ++i, ch = ch->next)
 {
  if (i == loc.chapter)
  {
   fz_html *html = epub_get_laid_out_html(ctx, doc, ch);
   fz_bookmark mark = fz_make_html_bookmark(ctx, html, loc.page);
   fz_drop_html(ctx, html);
   return mark;
  }
 }

 return 0;
}
