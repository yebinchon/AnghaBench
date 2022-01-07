
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int stbi ;


 int * psd_load (int *,int*,int*,int*,int) ;

__attribute__((used)) static stbi_uc *stbi_psd_load(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   return psd_load(s,x,y,comp,req_comp);
}
