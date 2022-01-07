
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ baseline; } ;


 TYPE_1__ ui ;
 int ui_begin_text () ;
 int ui_draw_character_imp (float,scalar_t__,int) ;
 int ui_end_text () ;

void ui_draw_character(float x, float y, int c)
{
 ui_begin_text();
 ui_draw_character_imp(x, y + ui.baseline, c);
 ui_end_text();
}
