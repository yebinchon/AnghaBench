
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int * desk_save ;
 int g_server_Bpp ;
 int ui_paint_bitmap (int,int,int,int,int,int,int *) ;

void ui_desktop_restore(uint32 offset, int x, int y, int cx, int cy)
{
  uint8* p;

  if (offset > 0x38400)
    offset = 0;
  if (offset + cx * cy > 0x38400)
    return;
  p = desk_save + offset * g_server_Bpp;
  ui_paint_bitmap(x, y, cx, cy, cx, cy, p);
}
