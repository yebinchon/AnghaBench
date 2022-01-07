
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int group_alpha; int shape; int dest; } ;
typedef TYPE_1__ tile_record ;
typedef int fz_context ;


 size_t fz_pixmap_size (int *,int ) ;

size_t
fz_tile_size(fz_context *ctx, tile_record *tile)
{
 if (!tile)
  return 0;
 return sizeof(*tile) + fz_pixmap_size(ctx, tile->dest) + fz_pixmap_size(ctx, tile->shape) + fz_pixmap_size(ctx, tile->group_alpha);
}
