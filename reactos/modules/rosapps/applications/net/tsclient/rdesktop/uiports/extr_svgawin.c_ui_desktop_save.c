
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 scalar_t__ contains_mouse (int,int,int,int) ;
 int * desk_save ;
 int draw_cursor_under (int ,int ) ;
 int g_server_Bpp ;
 int get_rect (int,int,int,int,int *) ;
 int mousex ;
 int mousey ;

void ui_desktop_save(uint32 offset, int x, int y, int cx, int cy)
{
  uint8* p;

  if (offset > 0x38400)
    offset = 0;
  if (offset + cx * cy > 0x38400)
    return;
  if (contains_mouse(x, y, cx, cy))
    draw_cursor_under(mousex, mousey);
  p = desk_save + offset * g_server_Bpp;
  get_rect(x, y, cx, cy, p);
}
