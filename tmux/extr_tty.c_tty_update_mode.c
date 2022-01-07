
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int flags; int mode; scalar_t__ cstyle; int term; int ccolour; } ;
struct screen {scalar_t__ cstyle; int ccolour; } ;


 int ALL_MOUSE_MODES ;
 int MODE_BLINKING ;
 int MODE_BRACKETPASTE ;
 int MODE_CURSOR ;
 int MODE_MOUSE_ALL ;
 int MODE_MOUSE_BUTTON ;
 int MODE_MOUSE_STANDARD ;
 int TTYC_CIVIS ;
 int TTYC_CNORM ;
 int TTYC_CVVIS ;
 int TTYC_SE ;
 int TTYC_SS ;
 int TTY_NOCURSOR ;
 scalar_t__ strcmp (int ,int ) ;
 int tty_force_cursor_colour (struct tty*,int ) ;
 int tty_putcode (struct tty*,int ) ;
 int tty_putcode1 (struct tty*,int ,scalar_t__) ;
 int tty_puts (struct tty*,char*) ;
 scalar_t__ tty_term_has (int ,int ) ;

void
tty_update_mode(struct tty *tty, int mode, struct screen *s)
{
 int changed;

 if (s != ((void*)0) && strcmp(s->ccolour, tty->ccolour) != 0)
  tty_force_cursor_colour(tty, s->ccolour);

 if (tty->flags & TTY_NOCURSOR)
  mode &= ~MODE_CURSOR;

 changed = mode ^ tty->mode;
 if (changed & MODE_BLINKING) {
  if (tty_term_has(tty->term, TTYC_CVVIS))
   tty_putcode(tty, TTYC_CVVIS);
  else
   tty_putcode(tty, TTYC_CNORM);
  changed |= MODE_CURSOR;
 }
 if (changed & MODE_CURSOR) {
  if (mode & MODE_CURSOR)
   tty_putcode(tty, TTYC_CNORM);
  else
   tty_putcode(tty, TTYC_CIVIS);
 }
 if (s != ((void*)0) && tty->cstyle != s->cstyle) {
  if (tty_term_has(tty->term, TTYC_SS)) {
   if (s->cstyle == 0 &&
       tty_term_has(tty->term, TTYC_SE))
    tty_putcode(tty, TTYC_SE);
   else
    tty_putcode1(tty, TTYC_SS, s->cstyle);
  }
  tty->cstyle = s->cstyle;
 }
 if (changed & ALL_MOUSE_MODES) {
  if (mode & ALL_MOUSE_MODES) {




   tty_puts(tty, "\033[?1006h");
   if (mode & MODE_MOUSE_ALL)
    tty_puts(tty, "\033[?1003h");
   else if (mode & MODE_MOUSE_BUTTON)
    tty_puts(tty, "\033[?1002h");
   else if (mode & MODE_MOUSE_STANDARD)
    tty_puts(tty, "\033[?1000h");
  } else {
   if (tty->mode & MODE_MOUSE_ALL)
    tty_puts(tty, "\033[?1003l");
   else if (tty->mode & MODE_MOUSE_BUTTON)
    tty_puts(tty, "\033[?1002l");
   else if (tty->mode & MODE_MOUSE_STANDARD)
    tty_puts(tty, "\033[?1000l");
   tty_puts(tty, "\033[?1006l");
  }
 }
 if (changed & MODE_BRACKETPASTE) {
  if (mode & MODE_BRACKETPASTE)
   tty_puts(tty, "\033[?2004h");
  else
   tty_puts(tty, "\033[?2004l");
 }
 tty->mode = mode;
}
