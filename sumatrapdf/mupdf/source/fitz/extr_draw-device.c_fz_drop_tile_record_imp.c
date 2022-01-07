
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int group_alpha; int shape; int dest; } ;
typedef TYPE_1__ tile_record ;
typedef int fz_storable ;
typedef int fz_context ;


 int fz_drop_pixmap (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
fz_drop_tile_record_imp(fz_context *ctx, fz_storable *storable)
{
 tile_record *tr = (tile_record *)storable;
 fz_drop_pixmap(ctx, tr->dest);
 fz_drop_pixmap(ctx, tr->shape);
 fz_drop_pixmap(ctx, tr->group_alpha);
 fz_free(ctx, tr);
}
