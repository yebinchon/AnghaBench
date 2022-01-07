
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int stbi ;


 int start_mem (int *,int const*,int) ;
 int stbi_info_main (int *,int*,int*,int*) ;

int stbi_info_from_memory(stbi_uc const *buffer, int len, int *x, int *y, int *comp)
{
   stbi s;
   start_mem(&s,buffer,len);
   return stbi_info_main(&s,x,y,comp);
}
