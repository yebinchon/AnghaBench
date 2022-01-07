
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* image; } ;
typedef TYPE_2__ fz_image_key ;
typedef int fz_context ;
struct TYPE_3__ {int key_storable; } ;


 int fz_key_storable_needs_reaping (int *,int *) ;

__attribute__((used)) static int
fz_needs_reap_image_key(fz_context *ctx, void *key_)
{
 fz_image_key *key = (fz_image_key *)key_;

 return fz_key_storable_needs_reaping(ctx, &key->image->key_storable);
}
