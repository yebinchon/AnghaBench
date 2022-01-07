
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int image; int refs; } ;
typedef TYPE_1__ fz_image_key ;
typedef int fz_context ;


 int fz_drop_image_store_key (int *,int ) ;
 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
fz_drop_image_key(fz_context *ctx, void *key_)
{
 fz_image_key *key = (fz_image_key *)key_;
 if (fz_drop_imp(ctx, key, &key->refs))
 {
  fz_drop_image_store_key(ctx, key->image);
  fz_free(ctx, key);
 }
}
