
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int last_wp; int flags; int mode; void* rright; void* rlower; void* rleft; void* rupper; void* cy; void* cx; int last_cell; int cell; } ;


 int ALL_MODES ;
 int MODE_CURSOR ;
 int TTYC_SGR0 ;
 int TTY_STARTED ;
 void* UINT_MAX ;
 int grid_default_cell ;
 int memcpy (int *,int *,int) ;
 int tty_cursor (struct tty*,int ,int ) ;
 int tty_margin_off (struct tty*) ;
 int tty_putcode (struct tty*,int ) ;
 int tty_puts (struct tty*,char*) ;
 int tty_region_off (struct tty*) ;
 int tty_update_mode (struct tty*,int ,int *) ;
 scalar_t__ tty_use_margin (struct tty*) ;

__attribute__((used)) static void
tty_invalidate(struct tty *tty)
{
 memcpy(&tty->cell, &grid_default_cell, sizeof tty->cell);

 memcpy(&tty->last_cell, &grid_default_cell, sizeof tty->last_cell);
 tty->last_wp = -1;

 tty->cx = tty->cy = UINT_MAX;

 tty->rupper = tty->rleft = UINT_MAX;
 tty->rlower = tty->rright = UINT_MAX;

 if (tty->flags & TTY_STARTED) {
  if (tty_use_margin(tty))
   tty_puts(tty, "\033[?69h");
  tty_putcode(tty, TTYC_SGR0);

  tty->mode = ALL_MODES;
  tty_update_mode(tty, MODE_CURSOR, ((void*)0));

  tty_cursor(tty, 0, 0);
  tty_region_off(tty);
  tty_margin_off(tty);
 } else
  tty->mode = MODE_CURSOR;
}
