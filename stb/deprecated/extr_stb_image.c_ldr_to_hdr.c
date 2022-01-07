
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float stbi_uc ;


 float* epf (char*,char*) ;
 int free (float*) ;
 int l2h_gamma ;
 float l2h_scale ;
 scalar_t__ malloc (int) ;
 scalar_t__ pow (float,int ) ;

__attribute__((used)) static float *ldr_to_hdr(stbi_uc *data, int x, int y, int comp)
{
   int i,k,n;
   float *output = (float *) malloc(x * y * comp * sizeof(float));
   if (output == ((void*)0)) { free(data); return epf("outofmem", "Out of memory"); }

   if (comp & 1) n = comp; else n = comp-1;
   for (i=0; i < x*y; ++i) {
      for (k=0; k < n; ++k) {
         output[i*comp + k] = (float) pow(data[i*comp+k]/255.0f, l2h_gamma) * l2h_scale;
      }
      if (k < comp) output[i*comp + k] = data[i*comp+k]/255.0f;
   }
   free(data);
   return output;
}
