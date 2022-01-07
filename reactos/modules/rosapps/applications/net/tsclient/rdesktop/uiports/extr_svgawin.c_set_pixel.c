
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;


 int clip_endx ;
 int clip_endy ;
 int clip_startx ;
 int clip_starty ;
 int g_height ;
 int g_server_Bpp ;
 int g_width ;
 int get_pixel (int,int) ;
 int rop (int,int,int ) ;
 int* sdata ;
 int vga_drawpixel (int,int) ;
 int vga_setcolor (int) ;

void set_pixel(int x, int y, int pixel, int op)
{
  if (x >= clip_startx && x < clip_endx && y >= clip_starty && y < clip_endy)
  {
    if (x >= 0 && x < g_width && y >= 0 && y < g_height)
    {
      if (op == 0x0)
        pixel = 0;
      else if (op == 0xf)
        pixel = -1;
      else if (op != 0xc)
        pixel = rop(op, pixel, get_pixel(x, y));
      if (sdata != 0)
      {
        if (g_server_Bpp == 1)
          sdata[y * g_width + x] = pixel;
        else if (g_server_Bpp == 2)
          ((uint16*)sdata)[y * g_width + x] = pixel;
      }
      else
      {
        vga_setcolor(pixel);
        vga_drawpixel(x, y);
      }
    }
  }
}
