
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_image ;
typedef int fz_display_list_image ;
typedef int fz_context ;



__attribute__((used)) static size_t
display_list_image_get_size(fz_context *ctx, fz_image *image_)
{
 fz_display_list_image *image = (fz_display_list_image *)image_;

 if (image == ((void*)0))
  return 0;

 return sizeof(fz_display_list_image) + 4096;
}
