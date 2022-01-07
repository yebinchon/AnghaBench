
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clip_endx ;
 int clip_endy ;
 int clip_startx ;
 int clip_starty ;

void ui_set_clip(int x, int y, int cx, int cy)
{
  clip_startx = x;
  clip_starty = y;
  clip_endx = x + cx;
  clip_endy = y + cy;
}
