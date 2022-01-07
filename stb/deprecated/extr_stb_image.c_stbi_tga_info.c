
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int tga_info (int *,int*,int*,int*) ;

int stbi_tga_info(stbi *s, int *x, int *y, int *comp)
{
    return tga_info(s, x, y, comp);
}
