
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int False ;
 int accel_draw_box (int,int,int,int,int *,int) ;
 int cache_rect (int,int,int,int,int ) ;
 scalar_t__ contains_mouse (int,int,int,int) ;
 int draw_cursor_under (int ,int ) ;
 int g_server_Bpp ;
 int mousex ;
 int mousey ;
 scalar_t__ warp_coords (int*,int*,int*,int*,int *,int *) ;

void ui_paint_bitmap(int x, int y, int cx, int cy,
                     int width, int height, uint8* data)
{
  if (warp_coords(&x, &y, &cx, &cy, ((void*)0), ((void*)0)))
  {
    if (contains_mouse(x, y, cx, cy))
      draw_cursor_under(mousex, mousey);
    accel_draw_box(x, y, cx, cy, data, width * g_server_Bpp);
    cache_rect(x, y, cx, cy, False);
  }
}
