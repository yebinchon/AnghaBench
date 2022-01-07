
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int False ;
 int accel_fill_rect (int,int,int,int,int) ;
 int cache_rect (int,int,int,int,int ) ;
 scalar_t__ contains_mouse (int,int,int,int) ;
 int draw_cursor_under (int ,int ) ;
 int mousex ;
 int mousey ;
 scalar_t__ warp_coords (int*,int*,int*,int*,int *,int *) ;

void ui_rect(int x, int y, int cx, int cy, int colour)
{
  if (warp_coords(&x, &y, &cx, &cy, ((void*)0), ((void*)0)))
  {
    if (contains_mouse(x, y, cx, cy))
      draw_cursor_under(mousex, mousey);
    accel_fill_rect(x, y, cx, cy, colour);
    cache_rect(x, y, cx, cy, False);
  }
}
