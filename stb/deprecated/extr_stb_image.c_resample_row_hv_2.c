
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__uint8 ;


 int STBI_NOTUSED (int) ;
 int div16 (int) ;
 int div4 (int) ;

__attribute__((used)) static stbi__uint8 *resample_row_hv_2(stbi__uint8 *out, stbi__uint8 *in_near, stbi__uint8 *in_far, int w, int hs)
{

   int i,t0,t1;
   if (w == 1) {
      out[0] = out[1] = div4(3*in_near[0] + in_far[0] + 2);
      return out;
   }

   t1 = 3*in_near[0] + in_far[0];
   out[0] = div4(t1+2);
   for (i=1; i < w; ++i) {
      t0 = t1;
      t1 = 3*in_near[i]+in_far[i];
      out[i*2-1] = div16(3*t0 + t1 + 8);
      out[i*2 ] = div16(3*t1 + t0 + 8);
   }
   out[w*2-1] = div4(t1+2);

   STBI_NOTUSED(hs);

   return out;
}
