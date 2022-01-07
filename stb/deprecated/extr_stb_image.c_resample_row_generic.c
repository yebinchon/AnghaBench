
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__uint8 ;


 int STBI_NOTUSED (int *) ;

__attribute__((used)) static stbi__uint8 *resample_row_generic(stbi__uint8 *out, stbi__uint8 *in_near, stbi__uint8 *in_far, int w, int hs)
{

   int i,j;
   STBI_NOTUSED(in_far);
   for (i=0; i < w; ++i)
      for (j=0; j < hs; ++j)
         out[i*hs+j] = in_near[i];
   return out;
}
