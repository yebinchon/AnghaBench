
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int attr; } ;
struct tty {int cy; int sy; int cx; int sx; scalar_t__ rlower; TYPE_2__* term; TYPE_1__ cell; } ;
struct TYPE_4__ {int flags; } ;


 int GRID_ATTR_CHARSET ;
 int TERM_EARLYWRAP ;
 int TTYC_CUP ;
 int strlen (char const*) ;
 char* tty_acs_get (struct tty*,int) ;
 int tty_add (struct tty*,...) ;
 int tty_putcode2 (struct tty*,int ,scalar_t__,int) ;

void
tty_putc(struct tty *tty, u_char ch)
{
 const char *acs;

 if ((tty->term->flags & TERM_EARLYWRAP) &&
     ch >= 0x20 && ch != 0x7f &&
     tty->cy == tty->sy - 1 &&
     tty->cx + 1 >= tty->sx)
  return;

 if (tty->cell.attr & GRID_ATTR_CHARSET) {
  acs = tty_acs_get(tty, ch);
  if (acs != ((void*)0))
   tty_add(tty, acs, strlen(acs));
  else
   tty_add(tty, &ch, 1);
 } else
  tty_add(tty, &ch, 1);

 if (ch >= 0x20 && ch != 0x7f) {
  if (tty->cx >= tty->sx) {
   tty->cx = 1;
   if (tty->cy != tty->rlower)
    tty->cy++;






   if (tty->term->flags & TERM_EARLYWRAP)
    tty_putcode2(tty, TTYC_CUP, tty->cy, tty->cx);
  } else
   tty->cx++;
 }
}
