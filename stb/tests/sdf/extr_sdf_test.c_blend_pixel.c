
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char*** bitmap ;
 scalar_t__ stb_lerp (float,unsigned char,int) ;

void blend_pixel(int x, int y, int color, float alpha)
{
   int i;
   for (i=0; i < 3; ++i)
      bitmap[y][x][i] = (unsigned char) (stb_lerp(alpha, bitmap[y][x][i], color)+0.5);
}
