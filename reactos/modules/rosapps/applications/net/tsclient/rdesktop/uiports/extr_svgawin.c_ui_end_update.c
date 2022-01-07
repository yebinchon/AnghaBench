
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int draw_cache_rects () ;
 int draw_cursor () ;

void ui_end_update(void)
{
  draw_cache_rects();
  draw_cursor();
}
