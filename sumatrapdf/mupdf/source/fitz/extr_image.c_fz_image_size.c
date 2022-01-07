
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t (* get_size ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_image ;
typedef int fz_context ;


 size_t stub1 (int *,TYPE_1__*) ;

size_t fz_image_size(fz_context *ctx, fz_image *im)
{
 if (im == ((void*)0))
  return 0;

 return im->get_size(ctx, im);
}
