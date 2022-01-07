
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int e (char*,char*) ;
 scalar_t__ stbi_bmp_info (int *,int*,int*,int*) ;
 scalar_t__ stbi_gif_info (int *,int*,int*,int*) ;
 scalar_t__ stbi_hdr_info (int *,int*,int*,int*) ;
 scalar_t__ stbi_jpeg_info (int *,int*,int*,int*) ;
 scalar_t__ stbi_pic_info (int *,int*,int*,int*) ;
 scalar_t__ stbi_png_info (int *,int*,int*,int*) ;
 scalar_t__ stbi_psd_info (int *,int*,int*,int*) ;
 scalar_t__ stbi_tga_info (int *,int*,int*,int*) ;

__attribute__((used)) static int stbi_info_main(stbi *s, int *x, int *y, int *comp)
{
   if (stbi_jpeg_info(s, x, y, comp))
       return 1;
   if (stbi_png_info(s, x, y, comp))
       return 1;
   if (stbi_gif_info(s, x, y, comp))
       return 1;
   if (stbi_bmp_info(s, x, y, comp))
       return 1;
   if (stbi_psd_info(s, x, y, comp))
       return 1;
   if (stbi_pic_info(s, x, y, comp))
       return 1;

   if (stbi_hdr_info(s, x, y, comp))
       return 1;


   if (stbi_tga_info(s, x, y, comp))
       return 1;
   return e("unknown image type", "Image not of any known type, or corrupt");
}
