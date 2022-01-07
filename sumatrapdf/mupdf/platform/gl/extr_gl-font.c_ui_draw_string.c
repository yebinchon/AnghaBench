
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ baseline; } ;


 int fz_chartorune (int*,char const*) ;
 TYPE_1__ ui ;
 int ui_begin_text () ;
 scalar_t__ ui_draw_character_imp (float,scalar_t__,int) ;
 int ui_end_text () ;

void ui_draw_string(float x, float y, const char *str)
{
 int c;
 ui_begin_text();
 while (*str)
 {
  str += fz_chartorune(&c, str);
  x += ui_draw_character_imp(x, y + ui.baseline, c);
 }
 ui_end_text();
}
