
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;
typedef int FILE ;


 int start_file (int *,int *) ;
 float* stbi_loadf_main (int *,int*,int*,int*,int) ;

float *stbi_loadf_from_file(FILE *f, int *x, int *y, int *comp, int req_comp)
{
   stbi s;
   start_file(&s,f);
   return stbi_loadf_main(&s,x,y,comp,req_comp);
}
