
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct screen {TYPE_1__* grid; } ;
struct TYPE_2__ {int sx; } ;


 int screen_reflow (struct screen*,int) ;
 int screen_reset_tabs (struct screen*) ;
 int screen_resize_y (struct screen*,int) ;
 int screen_size_x (struct screen*) ;
 int screen_size_y (struct screen*) ;

void
screen_resize(struct screen *s, u_int sx, u_int sy, int reflow)
{
 if (sx < 1)
  sx = 1;
 if (sy < 1)
  sy = 1;

 if (sx != screen_size_x(s)) {
  s->grid->sx = sx;
  screen_reset_tabs(s);
 } else
  reflow = 0;

 if (sy != screen_size_y(s))
  screen_resize_y(s, sy);

 if (reflow)
  screen_reflow(s, sx);
}
