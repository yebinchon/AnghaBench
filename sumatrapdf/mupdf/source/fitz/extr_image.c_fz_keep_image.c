
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int key_storable; } ;
typedef TYPE_1__ fz_image ;
typedef int fz_context ;


 TYPE_1__* fz_keep_key_storable (int *,int *) ;

fz_image *
fz_keep_image(fz_context *ctx, fz_image *image)
{
 return fz_keep_key_storable(ctx, &image->key_storable);
}
