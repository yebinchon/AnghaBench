
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_2__ {int width; int data; } ;
typedef TYPE_1__ bitmap ;
typedef scalar_t__ HBITMAP ;


 int False ;
 int accel_draw_box (int,int,int,int,int ,int) ;
 int cache_rect (int,int,int,int,int ) ;
 scalar_t__ contains_mouse (int,int,int,int) ;
 int draw_cursor_under (int ,int ) ;
 int g_server_Bpp ;
 int g_server_bpp ;
 int get_pixel2 (int,int,int ,int,int ) ;
 int get_ptr (int,int,int ,int,int ) ;
 int mousex ;
 int mousey ;
 int set_pixel (int,int,int,int) ;
 scalar_t__ warp_coords (int*,int*,int*,int*,int*,int*) ;

void ui_memblt(uint8 opcode, int x, int y, int cx, int cy,
               HBITMAP src, int srcx, int srcy)
{
  bitmap* b;
  int i;
  int j;
  int pixel;

  if (warp_coords(&x, &y, &cx, &cy, &srcx, &srcy))
  {
    if (contains_mouse(x, y, cx, cy))
      draw_cursor_under(mousex, mousey);
    b = (bitmap*)src;
    if (opcode == 0xc)
      accel_draw_box(x, y, cx, cy, get_ptr(srcx, srcy, b->data, b->width, g_server_bpp),
                     b->width * g_server_Bpp);
    else
    {
      for (i = 0; i < cy; i++)
      {
        for (j = 0; j < cx; j++)
        {
          pixel = get_pixel2(srcx + j, srcy + i, b->data, b->width, g_server_bpp);
          set_pixel(x + j, y + i, pixel, opcode);
        }
      }
    }
    cache_rect(x, y, cx, cy, False);
  }
}
