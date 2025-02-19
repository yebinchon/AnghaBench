
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__uint8 ;


 int float2fixed (float) ;

__attribute__((used)) static void YCbCr_to_RGB_row(stbi__uint8 *out, const stbi__uint8 *y, const stbi__uint8 *pcb, const stbi__uint8 *pcr, int count, int step)
{
   int i;
   for (i=0; i < count; ++i) {
      int y_fixed = (y[i] << 16) + 32768;
      int r,g,b;
      int cr = pcr[i] - 128;
      int cb = pcb[i] - 128;
      r = y_fixed + cr*float2fixed(1.40200f);
      g = y_fixed - cr*float2fixed(0.71414f) - cb*float2fixed(0.34414f);
      b = y_fixed + cb*float2fixed(1.77200f);
      r >>= 16;
      g >>= 16;
      b >>= 16;
      if ((unsigned) r > 255) { if (r < 0) r = 0; else r = 255; }
      if ((unsigned) g > 255) { if (g < 0) g = 0; else g = 255; }
      if ((unsigned) b > 255) { if (b < 0) b = 0; else b = 255; }
      out[0] = (stbi__uint8)r;
      out[1] = (stbi__uint8)g;
      out[2] = (stbi__uint8)b;
      out[3] = 255;
      out += step;
   }
}
