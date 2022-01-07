
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int flags; scalar_t__ id; } ;
struct grid_cell {scalar_t__ attr; scalar_t__ fg; scalar_t__ bg; scalar_t__ us; } ;
struct tty {int last_wp; int term; struct grid_cell last_cell; struct grid_cell cell; } ;


 int COLOUR_DEFAULT (scalar_t__) ;
 int GRID_ATTR_ALL_UNDERSCORE ;
 int GRID_ATTR_BLINK ;
 int GRID_ATTR_BRIGHT ;
 int GRID_ATTR_CHARSET ;
 int GRID_ATTR_DIM ;
 int GRID_ATTR_HIDDEN ;
 int GRID_ATTR_ITALICS ;
 int GRID_ATTR_OVERLINE ;
 int GRID_ATTR_REVERSE ;
 int GRID_ATTR_STRIKETHROUGH ;
 int GRID_ATTR_UNDERSCORE ;
 int GRID_ATTR_UNDERSCORE_2 ;
 int GRID_ATTR_UNDERSCORE_3 ;
 int GRID_ATTR_UNDERSCORE_4 ;
 int GRID_ATTR_UNDERSCORE_5 ;
 int PANE_STYLECHANGED ;
 int TTYC_BLINK ;
 int TTYC_BOLD ;
 int TTYC_DIM ;
 int TTYC_INVIS ;
 int TTYC_REV ;
 int TTYC_SETAB ;
 int TTYC_SMACS ;
 int TTYC_SMOL ;
 int TTYC_SMSO ;
 int TTYC_SMUL ;
 int TTYC_SMULX ;
 int TTYC_SMXX ;
 int memcpy (struct grid_cell*,struct grid_cell const*,int) ;
 scalar_t__ tty_acs_needed (struct tty*) ;
 int tty_check_bg (struct tty*,struct window_pane*,struct grid_cell*) ;
 int tty_check_fg (struct tty*,struct window_pane*,struct grid_cell*) ;
 int tty_check_us (struct tty*,struct window_pane*,struct grid_cell*) ;
 int tty_colours (struct tty*,struct grid_cell*) ;
 int tty_default_colours (struct grid_cell*,struct window_pane*) ;
 int tty_putcode (struct tty*,int ) ;
 int tty_putcode1 (struct tty*,int ,int) ;
 int tty_reset (struct tty*) ;
 int tty_set_italics (struct tty*) ;
 scalar_t__ tty_term_has (int ,int ) ;

void
tty_attributes(struct tty *tty, const struct grid_cell *gc,
    struct window_pane *wp)
{
 struct grid_cell *tc = &tty->cell, gc2;
 int changed;


 if (wp != ((void*)0) &&
     (int)wp->id == tty->last_wp &&
     ~(wp->flags & PANE_STYLECHANGED) &&
     gc->attr == tty->last_cell.attr &&
     gc->fg == tty->last_cell.fg &&
     gc->bg == tty->last_cell.bg &&
     gc->us == tty->last_cell.us)
  return;
 tty->last_wp = (wp != ((void*)0) ? (int)wp->id : -1);
 memcpy(&tty->last_cell, gc, sizeof tty->last_cell);


 memcpy(&gc2, gc, sizeof gc2);
 if (wp != ((void*)0))
  tty_default_colours(&gc2, wp);






 if (!tty_term_has(tty->term, TTYC_SETAB)) {
  if (gc2.attr & GRID_ATTR_REVERSE) {
   if (gc2.fg != 7 && !COLOUR_DEFAULT(gc2.fg))
    gc2.attr &= ~GRID_ATTR_REVERSE;
  } else {
   if (gc2.bg != 0 && !COLOUR_DEFAULT(gc2.bg))
    gc2.attr |= GRID_ATTR_REVERSE;
  }
 }


 tty_check_fg(tty, wp, &gc2);
 tty_check_bg(tty, wp, &gc2);
 tty_check_us(tty, wp, &gc2);





 if ((tc->attr & ~gc2.attr) || (tc->us != gc2.us && gc2.us == 0))
  tty_reset(tty);





 tty_colours(tty, &gc2);


 changed = gc2.attr & ~tc->attr;
 tc->attr = gc2.attr;


 if (changed & GRID_ATTR_BRIGHT)
  tty_putcode(tty, TTYC_BOLD);
 if (changed & GRID_ATTR_DIM)
  tty_putcode(tty, TTYC_DIM);
 if (changed & GRID_ATTR_ITALICS)
  tty_set_italics(tty);
 if (changed & GRID_ATTR_ALL_UNDERSCORE) {
  if ((changed & GRID_ATTR_UNDERSCORE) ||
      !tty_term_has(tty->term, TTYC_SMULX))
   tty_putcode(tty, TTYC_SMUL);
  else if (changed & GRID_ATTR_UNDERSCORE_2)
   tty_putcode1(tty, TTYC_SMULX, 2);
  else if (changed & GRID_ATTR_UNDERSCORE_3)
   tty_putcode1(tty, TTYC_SMULX, 3);
  else if (changed & GRID_ATTR_UNDERSCORE_4)
   tty_putcode1(tty, TTYC_SMULX, 4);
  else if (changed & GRID_ATTR_UNDERSCORE_5)
   tty_putcode1(tty, TTYC_SMULX, 5);
 }
 if (changed & GRID_ATTR_BLINK)
  tty_putcode(tty, TTYC_BLINK);
 if (changed & GRID_ATTR_REVERSE) {
  if (tty_term_has(tty->term, TTYC_REV))
   tty_putcode(tty, TTYC_REV);
  else if (tty_term_has(tty->term, TTYC_SMSO))
   tty_putcode(tty, TTYC_SMSO);
 }
 if (changed & GRID_ATTR_HIDDEN)
  tty_putcode(tty, TTYC_INVIS);
 if (changed & GRID_ATTR_STRIKETHROUGH)
  tty_putcode(tty, TTYC_SMXX);
 if (changed & GRID_ATTR_OVERLINE)
  tty_putcode(tty, TTYC_SMOL);
 if ((changed & GRID_ATTR_CHARSET) && tty_acs_needed(tty))
  tty_putcode(tty, TTYC_SMACS);
}
