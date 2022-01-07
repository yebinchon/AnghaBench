
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 float* epf (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 float* stbi_loadf_from_file (int *,int*,int*,int*,int) ;

float *stbi_loadf(char const *filename, int *x, int *y, int *comp, int req_comp)
{
   FILE *f = fopen(filename, "rb");
   float *result;
   if (!f) return epf("can't fopen", "Unable to open file");
   result = stbi_loadf_from_file(f,x,y,comp,req_comp);
   fclose(f);
   return result;
}
