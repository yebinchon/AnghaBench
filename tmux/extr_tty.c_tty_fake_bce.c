
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int dummy; } ;
struct tty {int term; } ;
struct grid_cell {int bg; } ;


 int COLOUR_DEFAULT (int ) ;
 int TTYC_BCE ;
 int grid_default_cell ;
 int memcpy (struct grid_cell*,int *,int) ;
 int tty_default_colours (struct grid_cell*,struct window_pane*) ;
 scalar_t__ tty_term_flag (int ,int ) ;

__attribute__((used)) static int
tty_fake_bce(const struct tty *tty, struct window_pane *wp, u_int bg)
{
 struct grid_cell gc;

 if (tty_term_flag(tty->term, TTYC_BCE))
  return (0);

 memcpy(&gc, &grid_default_cell, sizeof gc);
 if (wp != ((void*)0))
  tty_default_colours(&gc, wp);

 if (!COLOUR_DEFAULT(bg) || !COLOUR_DEFAULT(gc.bg))
  return (1);
 return (0);
}
