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
typedef  int stb_uint64 ;
typedef  int stb_uint ;
typedef  unsigned char stb_uchar ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int*) ; 

int FUNC6(stb_uchar output[20], char *file)
{
   int i;
   stb_uint64 length=0;
   unsigned char buffer[128];

   FILE *f = FUNC4(file, "rb");
   stb_uint h[5];

   if (f == NULL) return 0; // file not found

   h[0] = 0x67452301;
   h[1] = 0xefcdab89;
   h[2] = 0x98badcfe;
   h[3] = 0x10325476;
   h[4] = 0xc3d2e1f0;

   for(;;) {
      int n = FUNC2(buffer, 1, 64, f);
      if (n == 64) {
         FUNC5(buffer, h);
         length += n;
      } else {
         int block = 64;

         length += n;

         buffer[n++] = 0x80;

         // if there isn't enough room for the length, double the block
         if (n + 8 > 64) 
            block = 128;

         // pad to end
         FUNC3(buffer+n, 0, block-8-n);

         i = block - 8;
         buffer[i++] = (stb_uchar) (length >> 53);
         buffer[i++] = (stb_uchar) (length >> 45);
         buffer[i++] = (stb_uchar) (length >> 37);
         buffer[i++] = (stb_uchar) (length >> 29);
         buffer[i++] = (stb_uchar) (length >> 21);
         buffer[i++] = (stb_uchar) (length >> 13);
         buffer[i++] = (stb_uchar) (length >>  5);
         buffer[i++] = (stb_uchar) (length <<  3);
         FUNC0(i == block);
         FUNC5(buffer, h);
         if (block == 128)
            FUNC5(buffer+64, h);
         else
            FUNC0(block == 64);
         break;
      }
   }
   FUNC1(f);

   for (i=0; i < 5; ++i) {
      output[i*4 + 0] = h[i] >> 24;
      output[i*4 + 1] = h[i] >> 16;
      output[i*4 + 2] = h[i] >>  8;
      output[i*4 + 3] = h[i] >>  0;
   }

   return 1;
}