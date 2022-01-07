
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grid_cell {int fg; } ;
struct tty {int term_flags; struct grid_cell cell; } ;


 int COLOUR_FLAG_256 ;
 int COLOUR_FLAG_RGB ;
 int TERM_256COLOURS ;
 int TTYC_SETAF ;
 int tty_putcode1 (struct tty*,int ,int) ;
 int tty_puts (struct tty*,char*) ;
 scalar_t__ tty_try_colour (struct tty*,int,char*) ;
 int xsnprintf (char*,int,char*,int) ;

__attribute__((used)) static void
tty_colours_fg(struct tty *tty, const struct grid_cell *gc)
{
 struct grid_cell *tc = &tty->cell;
 char s[32];


 if (gc->fg & COLOUR_FLAG_RGB || gc->fg & COLOUR_FLAG_256) {
  if (tty_try_colour(tty, gc->fg, "38") == 0)
   goto save_fg;

  return;
 }


 if (gc->fg >= 90 && gc->fg <= 97) {
  if (tty->term_flags & TERM_256COLOURS) {
   xsnprintf(s, sizeof s, "\033[%dm", gc->fg);
   tty_puts(tty, s);
  } else
   tty_putcode1(tty, TTYC_SETAF, gc->fg - 90 + 8);
  goto save_fg;
 }


 tty_putcode1(tty, TTYC_SETAF, gc->fg);

save_fg:

 tc->fg = gc->fg;
}
