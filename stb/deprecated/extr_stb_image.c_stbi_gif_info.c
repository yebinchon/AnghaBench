
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int stbi_gif_info_raw (int *,int*,int*,int*) ;

__attribute__((used)) static int stbi_gif_info(stbi *s, int *x, int *y, int *comp)
{
   return stbi_gif_info_raw(s,x,y,comp);
}
