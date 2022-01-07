
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct window_pane {int dummy; } ;
struct tty {int cy; int sy; int cx; int sx; TYPE_1__* term; } ;
struct TYPE_4__ {int size; int* data; int width; } ;
struct grid_cell {int flags; TYPE_2__ data; } ;
struct TYPE_3__ {int flags; } ;


 int GRID_FLAG_PADDING ;
 int TERM_EARLYWRAP ;
 int tty_attributes (struct tty*,struct grid_cell const*,struct window_pane*) ;
 struct grid_cell* tty_check_codeset (struct tty*,struct grid_cell const*) ;
 int tty_putc (struct tty*,int) ;
 int tty_putn (struct tty*,int*,int,int ) ;

__attribute__((used)) static void
tty_cell(struct tty *tty, const struct grid_cell *gc, struct window_pane *wp)
{
 const struct grid_cell *gcp;


 if ((tty->term->flags & TERM_EARLYWRAP) &&
     tty->cy == tty->sy - 1 &&
     tty->cx == tty->sx - 1)
  return;


 if (gc->flags & GRID_FLAG_PADDING)
  return;


 tty_attributes(tty, gc, wp);


 gcp = tty_check_codeset(tty, gc);
 if (gcp->data.size == 1) {
  if (*gcp->data.data < 0x20 || *gcp->data.data == 0x7f)
   return;
  tty_putc(tty, *gcp->data.data);
  return;
 }


 tty_putn(tty, gcp->data.data, gcp->data.size, gcp->data.width);
}
