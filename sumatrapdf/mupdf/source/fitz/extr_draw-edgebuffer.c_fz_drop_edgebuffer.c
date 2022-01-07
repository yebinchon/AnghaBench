
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_rasterizer ;
struct TYPE_3__ {struct TYPE_3__* table; struct TYPE_3__* index; } ;
typedef TYPE_1__ fz_edgebuffer ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void fz_drop_edgebuffer(fz_context *ctx, fz_rasterizer *r)
{
 fz_edgebuffer *eb = (fz_edgebuffer *)r;

 if (eb)
 {
  fz_free(ctx, eb->index);
  fz_free(ctx, eb->table);
 }
 fz_free(ctx, eb);
}
