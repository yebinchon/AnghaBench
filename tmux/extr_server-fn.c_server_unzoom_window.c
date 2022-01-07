
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int dummy; } ;


 int server_redraw_window (struct window*) ;
 scalar_t__ window_unzoom (struct window*) ;

void
server_unzoom_window(struct window *w)
{
 if (window_unzoom(w) == 0)
  server_redraw_window(w);
}
