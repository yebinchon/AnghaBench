
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_document ;
typedef int fz_context ;
struct TYPE_5__ {TYPE_2__* spine; } ;
typedef TYPE_1__ epub_document ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ epub_chapter ;


 int count_chapter_pages (int *,TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int
epub_count_pages(fz_context *ctx, fz_document *doc_, int chapter)
{
 epub_document *doc = (epub_document*)doc_;
 epub_chapter *ch;
 int i;
 for (i = 0, ch = doc->spine; ch; ++i, ch = ch->next)
 {
  if (i == chapter)
  {
   return count_chapter_pages(ctx, doc, ch);
  }
 }
 return 0;
}
