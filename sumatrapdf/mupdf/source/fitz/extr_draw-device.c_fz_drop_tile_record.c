
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int storable; } ;
typedef TYPE_1__ tile_record ;
typedef int fz_context ;


 int fz_drop_storable (int *,int *) ;

__attribute__((used)) static void
fz_drop_tile_record(fz_context *ctx, tile_record *tile)
{
 fz_drop_storable(ctx, &tile->storable);
}
