
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* dst_from_src; int dst; int src; int refs; } ;
typedef TYPE_1__ pdf_graft_map ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;
 int pdf_drop_document (int *,int ) ;

void
pdf_drop_graft_map(fz_context *ctx, pdf_graft_map *map)
{
 if (fz_drop_imp(ctx, map, &map->refs))
 {
  pdf_drop_document(ctx, map->src);
  pdf_drop_document(ctx, map->dst);
  fz_free(ctx, map->dst_from_src);
  fz_free(ctx, map);
 }
}
