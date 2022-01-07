
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int False ;
 int accel_screen_copy (int,int,int,int,int,int) ;
 int cache_rect (int,int,int,int,int ) ;
 scalar_t__ contains_mouse (int,int,int,int) ;
 int draw_cache_rects () ;
 int draw_cursor_under (int ,int ) ;
 int g_server_Bpp ;
 int g_server_bpp ;
 int get_pixel (int,int) ;
 int get_pixel2 (int,int,int*,int,int ) ;
 int mousex ;
 int mousey ;
 int set_pixel (int,int,int ,int) ;
 int set_pixel2 (int,int,int ,int*,int,int ) ;
 scalar_t__ warp_coords (int*,int*,int*,int*,int*,int*) ;
 int xfree (int*) ;
 scalar_t__ xmalloc (int) ;

void ui_screenblt(uint8 opcode, int x, int y, int cx, int cy,
                  int srcx, int srcy)
{
  int i;
  int j;
  uint8* temp;

  if (x == srcx && y == srcy)
    return;
  if (warp_coords(&x, &y, &cx, &cy, &srcx, &srcy))
  {
    if (contains_mouse(x, y, cx, cy) || contains_mouse(srcx, srcy, cx, cy))
      draw_cursor_under(mousex, mousey);
    if (opcode == 0xc)
      accel_screen_copy(x, y, cx, cy, srcx, srcy);
    else
    {
      temp = (uint8*)xmalloc(cx * cy * g_server_Bpp);
      for (i = 0; i < cy; i++)
        for (j = 0; j < cx; j++)
          set_pixel2(j, i, get_pixel(srcx + j, srcy + i), temp, cx, g_server_bpp);
      for (i = 0; i < cy; i++)
        for (j = 0; j < cx; j++)
          set_pixel(x + j, y + i, get_pixel2(j, i, temp, cx, g_server_bpp), opcode);
      xfree(temp);
    }
    cache_rect(x, y, cx, cy, False);
    draw_cache_rects();
  }
}
