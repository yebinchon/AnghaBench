
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int copy_mem (int *,int ,int) ;
 int g_server_Bpp ;
 int g_server_bpp ;
 int g_width ;
 int get_ptr (int,int,scalar_t__,int ,int ) ;
 scalar_t__ sdata ;
 int vga_getscansegment (int *,int,int,int) ;

void get_rect(int x, int y, int cx, int cy, uint8* p)
{
  int i;

  if (x < 0)
  {
    cx = cx + x;
    x = 0;
  }
  if (y < 0)
  {
    cy = cy + y;
    y = 0;
  }
  if (sdata != 0)
  {
    for (i = 0; i < cy; i++)
    {
      copy_mem(p, get_ptr(x, y + i, sdata, g_width, g_server_bpp), cx * g_server_Bpp);
      p = p + cx * g_server_Bpp;
    }
  }
  else
  {
    for (i = 0; i < cy; i++)
    {
      vga_getscansegment(p, x, y + i, cx * g_server_Bpp);
      p = p + cx * g_server_Bpp;
    }
  }
}
