
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line {int b; int a; } ;
struct TYPE_2__ {scalar_t__ lineheight; } ;


 TYPE_1__ ui ;
 int ui_draw_string_part (float,float,int ,int ) ;

void ui_draw_lines(float x, float y, struct line *lines, int n)
{
 int i;
 for (i = 0; i < n; ++i)
 {
  ui_draw_string_part(x, y, lines[i].a, lines[i].b);
  y += ui.lineheight;
 }
}
