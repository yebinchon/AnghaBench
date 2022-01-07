
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct window_pane {int dummy; } ;
struct tty {int term_flags; TYPE_1__* term; } ;
struct grid_cell {int flags; int fg; int attr; } ;
struct TYPE_3__ {int flags; } ;


 int COLOUR_FLAG_256 ;
 int COLOUR_FLAG_RGB ;
 int GRID_ATTR_BRIGHT ;
 int GRID_FLAG_NOPALETTE ;
 int TERM_256COLOURS ;
 int TTYC_COLORS ;
 int TTYC_SETRGBF ;
 int colour_256to16 (int) ;
 int colour_find_rgb (int ,int ,int ) ;
 int colour_split_rgb (int,int *,int *,int *) ;
 int tty_term_has (TYPE_1__*,int ) ;
 int tty_term_number (TYPE_1__*,int ) ;
 int window_pane_get_palette (struct window_pane*,int) ;

__attribute__((used)) static void
tty_check_fg(struct tty *tty, struct window_pane *wp, struct grid_cell *gc)
{
 u_char r, g, b;
 u_int colours;
 int c;






 if (~gc->flags & GRID_FLAG_NOPALETTE) {
  c = gc->fg;
  if (c < 8 && gc->attr & GRID_ATTR_BRIGHT)
   c += 90;
  if ((c = window_pane_get_palette(wp, c)) != -1)
   gc->fg = c;
 }


 if (gc->fg & COLOUR_FLAG_RGB) {

  if (!tty_term_has(tty->term, TTYC_SETRGBF)) {
   colour_split_rgb(gc->fg, &r, &g, &b);
   gc->fg = colour_find_rgb(r, g, b);
  } else
   return;
 }


 if ((tty->term->flags|tty->term_flags) & TERM_256COLOURS)
  colours = 256;
 else
  colours = tty_term_number(tty->term, TTYC_COLORS);


 if (gc->fg & COLOUR_FLAG_256) {

  if (colours != 256) {
   gc->fg = colour_256to16(gc->fg);
   if (gc->fg & 8) {
    gc->fg &= 7;
    if (colours >= 16)
     gc->fg += 90;
   }
  }
  return;
 }


 if (gc->fg >= 90 && gc->fg <= 97 && colours < 16) {
  gc->fg -= 90;
  gc->attr |= GRID_ATTR_BRIGHT;
 }
}
