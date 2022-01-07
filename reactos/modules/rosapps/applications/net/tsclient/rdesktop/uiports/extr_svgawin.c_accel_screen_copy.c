
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int ACCEL_SCREENCOPY ;
 int copy_mem (int *,int *,int) ;
 int copy_memb (int *,int *,int) ;
 int g_server_Bpp ;
 int g_server_bpp ;
 int g_width ;
 int * get_ptr (int,int,scalar_t__,int,int ) ;
 scalar_t__ has_screen_copy ;
 scalar_t__ sdata ;
 int vga_accel (int ,int,int,int,int,int,int) ;
 int vga_drawscansegment (int *,int,int,int) ;
 int vga_getscansegment (int *,int,int,int) ;
 int xfree (int *) ;
 scalar_t__ xmalloc (int) ;

void accel_screen_copy(int x, int y, int cx, int cy, int srcx, int srcy)
{
  uint8* temp;
  uint8* s;
  uint8* d;
  int i;

  if (sdata != 0)
  {
    if (srcy < y)
    {
      s = get_ptr(srcx, (srcy + cy) - 1, sdata, g_width, g_server_bpp);
      d = get_ptr(x, (y + cy) - 1, sdata, g_width, g_server_bpp);
      for (i = 0; i < cy; i++)
      {
        copy_mem(d, s, cx * g_server_Bpp);
        s = s - g_width * g_server_Bpp;
        d = d - g_width * g_server_Bpp;
      }
    }
    else if (srcy > y || srcx > x)
    {
      s = get_ptr(srcx, srcy, sdata, g_width, g_server_bpp);
      d = get_ptr(x, y, sdata, g_width, g_server_bpp);
      for (i = 0; i < cy; i++)
      {
        copy_mem(d, s, cx * g_server_Bpp);
        s = s + g_width * g_server_Bpp;
        d = d + g_width * g_server_Bpp;
      }
    }
    else
    {
      s = get_ptr(srcx, srcy, sdata, g_width, g_server_bpp);
      d = get_ptr(x, y, sdata, g_width, g_server_bpp);
      for (i = 0; i < cy; i++)
      {
        copy_memb(d, s, cx * g_server_Bpp);
        s = s + g_width * g_server_Bpp;
        d = d + g_width * g_server_Bpp;
      }
    }
  }
  else if (has_screen_copy)
  {
    vga_accel(ACCEL_SCREENCOPY, srcx, srcy, x, y, cx, cy);
  }
  else
  {

    temp = (uint8*)xmalloc(cx * cy * g_server_Bpp);
    for (i = 0; i < cy; i++)
      vga_getscansegment(get_ptr(0, i, temp, cx, g_server_bpp), srcx, srcy + i, cx * g_server_Bpp);
    for (i = 0; i < cy; i++)
      vga_drawscansegment(get_ptr(0, i, temp, cx, g_server_bpp), x, y + i, cx * g_server_Bpp);
    xfree(temp);
  }
}
