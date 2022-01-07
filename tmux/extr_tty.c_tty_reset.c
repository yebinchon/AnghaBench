
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grid_cell {int attr; } ;
struct tty {int last_wp; struct grid_cell last_cell; struct grid_cell cell; } ;


 int GRID_ATTR_CHARSET ;
 int TTYC_RMACS ;
 int TTYC_SGR0 ;
 int grid_cells_equal (struct grid_cell*,int *) ;
 int grid_default_cell ;
 int memcpy (struct grid_cell*,int *,int) ;
 scalar_t__ tty_acs_needed (struct tty*) ;
 int tty_putcode (struct tty*,int ) ;

void
tty_reset(struct tty *tty)
{
 struct grid_cell *gc = &tty->cell;

 if (!grid_cells_equal(gc, &grid_default_cell)) {
  if ((gc->attr & GRID_ATTR_CHARSET) && tty_acs_needed(tty))
   tty_putcode(tty, TTYC_RMACS);
  tty_putcode(tty, TTYC_SGR0);
  memcpy(gc, &grid_default_cell, sizeof *gc);
 }

 memcpy(&tty->last_cell, &grid_default_cell, sizeof tty->last_cell);
 tty->last_wp = -1;
}
