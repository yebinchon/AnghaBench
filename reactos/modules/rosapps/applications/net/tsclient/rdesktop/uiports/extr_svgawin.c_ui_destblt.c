
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int False ;
 int cache_rect (int,int,int,int,int ) ;
 scalar_t__ contains_mouse (int,int,int,int) ;
 int draw_cursor_under (int ,int ) ;
 int fill_rect (int,int,int,int,int,int ) ;
 int mousex ;
 int mousey ;
 scalar_t__ warp_coords (int*,int*,int*,int*,int *,int *) ;

void ui_destblt(uint8 opcode, int x, int y, int cx, int cy)
{
  if (warp_coords(&x, &y, &cx, &cy, ((void*)0), ((void*)0)))
  {
    if (contains_mouse(x, y, cx, cy))
      draw_cursor_under(mousex, mousey);
    fill_rect(x, y, cx, cy, -1, opcode);
    cache_rect(x, y, cx, cy, False);
  }
}
