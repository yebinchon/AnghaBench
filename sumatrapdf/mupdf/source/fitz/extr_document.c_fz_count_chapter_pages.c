
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* count_pages ) (int *,TYPE_1__*,int) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int fz_ensure_layout (int *,TYPE_1__*) ;
 int stub1 (int *,TYPE_1__*,int) ;

int
fz_count_chapter_pages(fz_context *ctx, fz_document *doc, int chapter)
{
 fz_ensure_layout(ctx, doc);
 if (doc && doc->count_pages)
  return doc->count_pages(ctx, doc, chapter);
 return 0;
}
