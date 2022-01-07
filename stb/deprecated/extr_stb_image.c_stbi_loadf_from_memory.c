
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int stbi ;


 int start_mem (int *,int const*,int) ;
 float* stbi_loadf_main (int *,int*,int*,int*,int) ;

float *stbi_loadf_from_memory(stbi_uc const *buffer, int len, int *x, int *y, int *comp, int req_comp)
{
   stbi s;
   start_mem(&s,buffer,len);
   return stbi_loadf_main(&s,x,y,comp,req_comp);
}
