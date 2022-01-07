
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 unsigned char* epuc (char*,char*) ;
 unsigned char* hdr_to_ldr (float*,int,int,int) ;
 unsigned char* stbi_bmp_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi_bmp_test (int *) ;
 unsigned char* stbi_gif_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi_gif_test (int *) ;
 float* stbi_hdr_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi_hdr_test (int *) ;
 unsigned char* stbi_jpeg_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi_jpeg_test (int *) ;
 unsigned char* stbi_pic_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi_pic_test (int *) ;
 unsigned char* stbi_png_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi_png_test (int *) ;
 unsigned char* stbi_psd_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi_psd_test (int *) ;
 unsigned char* stbi_tga_load (int *,int*,int*,int*,int) ;
 scalar_t__ stbi_tga_test (int *) ;

__attribute__((used)) static unsigned char *stbi_load_main(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   if (stbi_jpeg_test(s)) return stbi_jpeg_load(s,x,y,comp,req_comp);
   if (stbi_png_test(s)) return stbi_png_load(s,x,y,comp,req_comp);
   if (stbi_bmp_test(s)) return stbi_bmp_load(s,x,y,comp,req_comp);
   if (stbi_gif_test(s)) return stbi_gif_load(s,x,y,comp,req_comp);
   if (stbi_psd_test(s)) return stbi_psd_load(s,x,y,comp,req_comp);
   if (stbi_pic_test(s)) return stbi_pic_load(s,x,y,comp,req_comp);


   if (stbi_hdr_test(s)) {
      float *hdr = stbi_hdr_load(s, x,y,comp,req_comp);
      return hdr_to_ldr(hdr, *x, *y, req_comp ? req_comp : *comp);
   }



   if (stbi_tga_test(s))
      return stbi_tga_load(s,x,y,comp,req_comp);
   return epuc("unknown image type", "Image not of any known type, or corrupt");
}
