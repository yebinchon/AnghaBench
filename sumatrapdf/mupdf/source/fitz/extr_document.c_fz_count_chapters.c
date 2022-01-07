
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* count_chapters ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int fz_ensure_layout (int *,TYPE_1__*) ;
 int stub1 (int *,TYPE_1__*) ;

int
fz_count_chapters(fz_context *ctx, fz_document *doc)
{
 fz_ensure_layout(ctx, doc);
 if (doc && doc->count_chapters)
  return doc->count_chapters(ctx, doc);
 return 1;
}
