
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int ACCEL_PUTIMAGE ;
 int copy_mem (int *,int *,int) ;
 int g_server_Bpp ;
 int g_server_bpp ;
 int g_width ;
 int * get_ptr (int,int,scalar_t__,int,int ) ;
 scalar_t__ has_put_image ;
 scalar_t__ sdata ;
 int vga_accel (int ,int,int,int,int,int *) ;
 int vga_drawscansegment (int *,int,int,int) ;

void accel_draw_box(int x, int y, int cx, int cy, uint8* data, int line_size)
{
  int i;
  uint8* s;
  uint8* d;

  if (sdata != 0)
  {
    s = data;
    d = get_ptr(x, y, sdata, g_width, g_server_bpp);
    for (i = 0; i < cy; i++)
    {
      copy_mem(d, s, cx * g_server_Bpp);
      s = s + line_size;
      d = d + g_width * g_server_Bpp;
    }
  }
  else if (has_put_image && line_size == cx * g_server_Bpp)
  {
    vga_accel(ACCEL_PUTIMAGE, x, y, cx, cy, data);
  }
  else
  {
    s = data;
    for (i = 0; i < cy; i++)
    {
      vga_drawscansegment(s, x, y + i, cx * g_server_Bpp);
      s = s + line_size;
    }
  }
}
