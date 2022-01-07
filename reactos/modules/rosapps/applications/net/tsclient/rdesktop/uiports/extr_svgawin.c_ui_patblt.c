
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int style; int yorigin; int xorigin; int * pattern; } ;
typedef TYPE_1__ BRUSH ;


 int False ;
 int cache_rect (int,int,int,int,int ) ;
 scalar_t__ contains_mouse (int,int,int,int) ;
 int draw_cursor_under (int ,int ) ;
 int fill_rect (int,int,int,int,int,int ) ;
 int is_pixel_on (int *,int,int,int,int) ;
 int mousex ;
 int mousey ;
 int set_pixel (int,int,int,int ) ;
 scalar_t__ warp_coords (int*,int*,int*,int*,int *,int *) ;

void ui_patblt(uint8 opcode, int x, int y, int cx, int cy,
               BRUSH * brush, int bgcolour, int fgcolour)
{
  int i;
  int j;
  uint8 ipattern[8];

  if (warp_coords(&x, &y, &cx, &cy, ((void*)0), ((void*)0)))
  {
    if (contains_mouse(x, y, cx, cy))
      draw_cursor_under(mousex, mousey);
    switch (brush->style)
    {
      case 0:
        fill_rect(x, y, cx, cy, fgcolour, opcode);
        break;
      case 3:
        for (i = 0; i < 8; i++)
          ipattern[i] = ~brush->pattern[7 - i];
        for (i = 0; i < cy; i++)
          for (j = 0; j < cx; j++)
            if (is_pixel_on(ipattern, (x + j + brush->xorigin) % 8,
                              (y + i + brush->yorigin) % 8, 8, 1))
              set_pixel(x + j, y + i, fgcolour, opcode);
            else
              set_pixel(x + j, y + i, bgcolour, opcode);
        break;
    }
    cache_rect(x, y, cx, cy, False);
  }
}
