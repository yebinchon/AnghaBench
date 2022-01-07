
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_image ;
struct TYPE_2__ {int list; } ;
typedef TYPE_1__ fz_display_list_image ;
typedef int fz_context ;


 int fz_drop_display_list (int *,int ) ;

__attribute__((used)) static void drop_display_list_image(fz_context *ctx, fz_image *image_)
{
 fz_display_list_image *image = (fz_display_list_image *)image_;

 if (image == ((void*)0))
  return;
 fz_drop_display_list(ctx, image->list);
}
