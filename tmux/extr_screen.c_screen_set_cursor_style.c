
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct screen {int cstyle; } ;



void
screen_set_cursor_style(struct screen *s, u_int style)
{
 if (style <= 6)
  s->cstyle = style;
}
