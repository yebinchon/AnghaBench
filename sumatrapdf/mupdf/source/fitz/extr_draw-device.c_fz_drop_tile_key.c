
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cs; int refs; } ;
typedef TYPE_1__ tile_key ;
typedef int fz_context ;


 int fz_drop_colorspace_store_key (int *,int ) ;
 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
fz_drop_tile_key(fz_context *ctx, void *key_)
{
 tile_key *key = key_;
 if (fz_drop_imp(ctx, key, &key->refs))
 {
  fz_drop_colorspace_store_key(ctx, key->cs);
  fz_free(ctx, key);
 }
}
