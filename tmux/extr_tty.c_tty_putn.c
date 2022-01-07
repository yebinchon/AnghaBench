
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct tty {int cy; int sy; scalar_t__ cx; scalar_t__ sx; TYPE_1__* term; } ;
struct TYPE_2__ {int flags; } ;


 int TERM_EARLYWRAP ;
 scalar_t__ UINT_MAX ;
 int tty_add (struct tty*,void const*,size_t) ;

void
tty_putn(struct tty *tty, const void *buf, size_t len, u_int width)
{
 if ((tty->term->flags & TERM_EARLYWRAP) &&
     tty->cy == tty->sy - 1 &&
     tty->cx + len >= tty->sx)
  len = tty->sx - tty->cx - 1;

 tty_add(tty, buf, len);
 if (tty->cx + width > tty->sx) {
  tty->cx = (tty->cx + width) - tty->sx;
  if (tty->cx <= tty->sx)
   tty->cy++;
  else
   tty->cx = tty->cy = UINT_MAX;
 } else
  tty->cx += width;
}
