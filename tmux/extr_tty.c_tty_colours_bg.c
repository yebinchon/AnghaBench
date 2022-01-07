
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grid_cell {int bg; } ;
struct tty {int term_flags; struct grid_cell cell; } ;


 int COLOUR_FLAG_256 ;
 int COLOUR_FLAG_RGB ;
 int TERM_256COLOURS ;
 int TTYC_SETAB ;
 int tty_putcode1 (struct tty*,int ,int) ;
 int tty_puts (struct tty*,char*) ;
 scalar_t__ tty_try_colour (struct tty*,int,char*) ;
 int xsnprintf (char*,int,char*,int) ;

__attribute__((used)) static void
tty_colours_bg(struct tty *tty, const struct grid_cell *gc)
{
 struct grid_cell *tc = &tty->cell;
 char s[32];


 if (gc->bg & COLOUR_FLAG_RGB || gc->bg & COLOUR_FLAG_256) {
  if (tty_try_colour(tty, gc->bg, "48") == 0)
   goto save_bg;

  return;
 }


 if (gc->bg >= 90 && gc->bg <= 97) {
  if (tty->term_flags & TERM_256COLOURS) {
   xsnprintf(s, sizeof s, "\033[%dm", gc->bg + 10);
   tty_puts(tty, s);
  } else
   tty_putcode1(tty, TTYC_SETAB, gc->bg - 90 + 8);
  goto save_bg;
 }


 tty_putcode1(tty, TTYC_SETAB, gc->bg);

save_bg:

 tc->bg = gc->bg;
}
