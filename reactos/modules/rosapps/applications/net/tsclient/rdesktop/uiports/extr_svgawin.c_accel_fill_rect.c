
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;


 int ACCEL_FILLBOX ;
 int ACCEL_SETFGCOLOR ;
 int copy_mem (int*,int*,int) ;
 int g_server_Bpp ;
 int g_server_bpp ;
 int g_width ;
 int* get_ptr (int,int,scalar_t__,int,int ) ;
 scalar_t__ has_fill_box ;
 scalar_t__ sdata ;
 int vga_accel (int ,int,...) ;
 int vga_drawscansegment (int*,int,int,int) ;
 int xfree (int*) ;
 int* xmalloc (int) ;

void accel_fill_rect(int x, int y, int cx, int cy, int color)
{
  int i;
  uint8* temp;
  uint8* d;

  if (sdata != 0)
  {
    temp = xmalloc(cx * g_server_Bpp);
    if (g_server_Bpp == 1)
      for (i = 0; i < cx; i++)
        temp[i] = color;
    else if (g_server_Bpp == 2)
      for (i = 0; i < cx; i++)
        ((uint16*)temp)[i] = color;
    d = get_ptr(x, y, sdata, g_width, g_server_bpp);
    for (i = 0; i < cy; i++)
    {
      copy_mem(d, temp, cx * g_server_Bpp);
      d = d + g_width * g_server_Bpp;
    }
    xfree(temp);
  }
  else if (has_fill_box)
  {
    vga_accel(ACCEL_SETFGCOLOR, color);
    vga_accel(ACCEL_FILLBOX, x, y, cx, cy);
  }
  else
  {
    temp = xmalloc(cx * g_server_Bpp);
    if (g_server_Bpp == 1)
      for (i = 0; i < cx; i++)
        temp[i] = color;
    else if (g_server_Bpp == 2)
      for (i = 0; i < cx; i++)
        ((uint16*)temp)[i] = color;
    for (i = 0; i < cy; i++)
      vga_drawscansegment(temp, x, y + i, cx * g_server_Bpp);
    xfree(temp);
  }
}
