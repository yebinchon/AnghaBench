
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ stbi_uc ;
typedef scalar_t__ stbi__uint8 ;


 scalar_t__* epuc (char*,char*) ;
 scalar_t__ float2int (float) ;
 int free (float*) ;
 int h2l_gamma_i ;
 float h2l_scale_i ;
 scalar_t__ malloc (int) ;
 scalar_t__ pow (float,int ) ;

__attribute__((used)) static stbi_uc *hdr_to_ldr(float *data, int x, int y, int comp)
{
   int i,k,n;
   stbi_uc *output = (stbi_uc *) malloc(x * y * comp);
   if (output == ((void*)0)) { free(data); return epuc("outofmem", "Out of memory"); }

   if (comp & 1) n = comp; else n = comp-1;
   for (i=0; i < x*y; ++i) {
      for (k=0; k < n; ++k) {
         float z = (float) pow(data[i*comp+k]*h2l_scale_i, h2l_gamma_i) * 255 + 0.5f;
         if (z < 0) z = 0;
         if (z > 255) z = 255;
         output[i*comp + k] = (stbi__uint8) float2int(z);
      }
      if (k < comp) {
         float z = data[i*comp+k] * 255 + 0.5f;
         if (z < 0) z = 0;
         if (z > 255) z = 255;
         output[i*comp + k] = (stbi__uint8) float2int(z);
      }
   }
   free(data);
   return output;
}
