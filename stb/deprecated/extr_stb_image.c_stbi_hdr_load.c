
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 float* hdr_load (int *,int*,int*,int*,int) ;

__attribute__((used)) static float *stbi_hdr_load(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   return hdr_load(s,x,y,comp,req_comp);
}
