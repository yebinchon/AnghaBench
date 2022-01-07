
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clip_endx ;
 int clip_endy ;
 scalar_t__ clip_startx ;
 scalar_t__ clip_starty ;
 int g_height ;
 int g_width ;

void ui_reset_clip(void)
{
  clip_startx = 0;
  clip_starty = 0;
  clip_endx = g_width;
  clip_endy = g_height;
}
