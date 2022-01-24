#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* img6x5_template ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,float*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,unsigned char*) ; 

void FUNC6(void)
{
   // make a RGB version of the template image
   // use red on blue to detect R<->B swaps
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

   FUNC4("output/wr6x5_regular.png", 6, 5, 3, img6x5_rgb, 6*3);
   FUNC1("output/wr6x5_regular.bmp", 6, 5, 3, img6x5_rgb);
   FUNC5("output/wr6x5_regular.tga", 6, 5, 3, img6x5_rgb);
   FUNC3("output/wr6x5_regular.jpg", 6, 5, 3, img6x5_rgb, 95);
   FUNC2("output/wr6x5_regular.hdr", 6, 5, 3, img6x5_rgbf);

   FUNC0(1);

   FUNC4("output/wr6x5_flip.png", 6, 5, 3, img6x5_rgb, 6*3);
   FUNC1("output/wr6x5_flip.bmp", 6, 5, 3, img6x5_rgb);
   FUNC5("output/wr6x5_flip.tga", 6, 5, 3, img6x5_rgb);
   FUNC3("output/wr6x5_flip.jpg", 6, 5, 3, img6x5_rgb, 95);
   FUNC2("output/wr6x5_flip.hdr", 6, 5, 3, img6x5_rgbf);
}