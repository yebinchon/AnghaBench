
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* img6x5_template ;
 int stbi_flip_vertically_on_write (int) ;
 int stbi_write_bmp (char*,int,int,int,unsigned char*) ;
 int stbi_write_hdr (char*,int,int,int,float*) ;
 int stbi_write_jpg (char*,int,int,int,unsigned char*,int) ;
 int stbi_write_png (char*,int,int,int,unsigned char*,int) ;
 int stbi_write_tga (char*,int,int,int,unsigned char*) ;

void image_write_test(void)
{


   unsigned char img6x5_rgb[6*5*3];
   float img6x5_rgbf[6*5*3];
   int i;

   for (i = 0; i < 6*5; i++) {
      int on = img6x5_template[i] == '*';
      img6x5_rgb[i*3 + 0] = on ? 255 : 0;
      img6x5_rgb[i*3 + 1] = 0;
      img6x5_rgb[i*3 + 2] = on ? 0 : 255;

      img6x5_rgbf[i*3 + 0] = on ? 1.0f : 0.0f;
      img6x5_rgbf[i*3 + 1] = 0.0f;
      img6x5_rgbf[i*3 + 2] = on ? 0.0f : 1.0f;
   }

   stbi_write_png("output/wr6x5_regular.png", 6, 5, 3, img6x5_rgb, 6*3);
   stbi_write_bmp("output/wr6x5_regular.bmp", 6, 5, 3, img6x5_rgb);
   stbi_write_tga("output/wr6x5_regular.tga", 6, 5, 3, img6x5_rgb);
   stbi_write_jpg("output/wr6x5_regular.jpg", 6, 5, 3, img6x5_rgb, 95);
   stbi_write_hdr("output/wr6x5_regular.hdr", 6, 5, 3, img6x5_rgbf);

   stbi_flip_vertically_on_write(1);

   stbi_write_png("output/wr6x5_flip.png", 6, 5, 3, img6x5_rgb, 6*3);
   stbi_write_bmp("output/wr6x5_flip.bmp", 6, 5, 3, img6x5_rgb);
   stbi_write_tga("output/wr6x5_flip.tga", 6, 5, 3, img6x5_rgb);
   stbi_write_jpg("output/wr6x5_flip.jpg", 6, 5, 3, img6x5_rgb, 95);
   stbi_write_hdr("output/wr6x5_flip.hdr", 6, 5, 3, img6x5_rgbf);
}
