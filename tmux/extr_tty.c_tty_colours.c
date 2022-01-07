
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grid_cell {scalar_t__ fg; scalar_t__ bg; scalar_t__ us; } ;
struct tty {int term; struct grid_cell cell; } ;


 scalar_t__ COLOUR_DEFAULT (scalar_t__) ;
 int TTYC_AX ;
 int TTYC_OP ;
 int TTYC_SETAB ;
 int TTYC_SETAF ;
 int tty_colours_bg (struct tty*,struct grid_cell const*) ;
 int tty_colours_fg (struct tty*,struct grid_cell const*) ;
 int tty_colours_us (struct tty*,struct grid_cell const*) ;
 int tty_putcode1 (struct tty*,int ,int) ;
 int tty_puts (struct tty*,char*) ;
 int tty_reset (struct tty*) ;
 int tty_term_flag (int ,int ) ;
 scalar_t__ tty_term_has (int ,int ) ;

__attribute__((used)) static void
tty_colours(struct tty *tty, const struct grid_cell *gc)
{
 struct grid_cell *tc = &tty->cell;
 int have_ax;


 if (gc->fg == tc->fg && gc->bg == tc->bg && gc->us == tc->us)
  return;







 if (COLOUR_DEFAULT(gc->fg) || COLOUR_DEFAULT(gc->bg)) {







  have_ax = tty_term_flag(tty->term, TTYC_AX);
  if (!have_ax && tty_term_has(tty->term, TTYC_OP))
   tty_reset(tty);
  else {
   if (COLOUR_DEFAULT(gc->fg) && !COLOUR_DEFAULT(tc->fg)) {
    if (have_ax)
     tty_puts(tty, "\033[39m");
    else if (tc->fg != 7)
     tty_putcode1(tty, TTYC_SETAF, 7);
    tc->fg = gc->fg;
   }
   if (COLOUR_DEFAULT(gc->bg) && !COLOUR_DEFAULT(tc->bg)) {
    if (have_ax)
     tty_puts(tty, "\033[49m");
    else if (tc->bg != 0)
     tty_putcode1(tty, TTYC_SETAB, 0);
    tc->bg = gc->bg;
   }
  }
 }


 if (!COLOUR_DEFAULT(gc->fg) && gc->fg != tc->fg)
  tty_colours_fg(tty, gc);





 if (!COLOUR_DEFAULT(gc->bg) && gc->bg != tc->bg)
  tty_colours_bg(tty, gc);


 if (gc->us != tc->us)
  tty_colours_us(tty, gc);
}
