
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_storable; } ;
typedef TYPE_1__ fz_image ;
typedef int fz_context ;


 int fz_drop_key_storable_key (int *,int *) ;

void
fz_drop_image_store_key(fz_context *ctx, fz_image *image)
{
 fz_drop_key_storable_key(ctx, &image->key_storable);
}
