
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int dummy; } ;
struct tty {int dummy; } ;
struct grid_cell {int bg; } ;


 int grid_default_cell ;
 int memcpy (struct grid_cell*,int *,int) ;
 int tty_attributes (struct tty*,struct grid_cell*,struct window_pane*) ;

__attribute__((used)) static void
tty_default_attributes(struct tty *tty, struct window_pane *wp, u_int bg)
{
 static struct grid_cell gc;

 memcpy(&gc, &grid_default_cell, sizeof gc);
 gc.bg = bg;
 tty_attributes(tty, &gc, wp);
}
