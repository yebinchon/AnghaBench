
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR16TO32 (int) ;
 int GrFillRect (int ,int ,int,int,int,int) ;
 int GrSetGCForeground (int ,int) ;
 int g_bpp ;
 int g_gc ;
 int g_server_bpp ;
 int g_wnd ;

void ui_rect(int x, int y, int cx, int cy, int color)
{
  if (g_server_bpp == 16 && g_bpp == 32)
  {
    color = COLOR16TO32(color);
  }
  GrSetGCForeground(g_gc, color);
  GrFillRect(g_wnd, g_gc, x, y, cx, cy);
}
