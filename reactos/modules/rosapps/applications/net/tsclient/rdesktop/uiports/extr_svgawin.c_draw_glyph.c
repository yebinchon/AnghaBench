
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int data; } ;
typedef TYPE_1__ bitmap ;
typedef scalar_t__ HGLYPH ;


 scalar_t__ is_pixel_on (int ,int,int,int,int) ;
 int set_pixel (int,int,int,int) ;

void draw_glyph (int x, int y, HGLYPH glyph, int fgcolour)
{
  bitmap* the_glyph;
  int i, j;

  the_glyph = (bitmap*)glyph;
  if (the_glyph == ((void*)0))
    return;
  for (i = 0; i < the_glyph->height; i++)
    for (j = 0; j < the_glyph->width; j++)
      if (is_pixel_on(the_glyph->data, j, i, the_glyph->width, 8))
        set_pixel(x + j, y + i, fgcolour, 0xc);
}
