
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ xps_part ;
typedef int xps_document ;
typedef int fz_image ;
typedef int fz_context ;


 int * fz_new_image_from_buffer (int *,int ) ;

__attribute__((used)) static fz_image *
xps_load_image(fz_context *ctx, xps_document *doc, xps_part *part)
{
 return fz_new_image_from_buffer(ctx, part->data);
}
