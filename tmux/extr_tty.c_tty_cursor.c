
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tty_term {int dummy; } ;
struct tty {int sx; int cx; int cy; int rlower; scalar_t__ rleft; int rupper; struct tty_term* term; } ;


 int TTYC_CUB ;
 int TTYC_CUB1 ;
 int TTYC_CUD ;
 int TTYC_CUD1 ;
 int TTYC_CUF ;
 int TTYC_CUF1 ;
 int TTYC_CUP ;
 int TTYC_CUU ;
 int TTYC_CUU1 ;
 int TTYC_HOME ;
 int TTYC_HPA ;
 int TTYC_VPA ;
 scalar_t__ abs (int) ;
 int tty_putc (struct tty*,char) ;
 int tty_putcode (struct tty*,int ) ;
 int tty_putcode1 (struct tty*,int ,int) ;
 int tty_putcode2 (struct tty*,int ,int,int) ;
 scalar_t__ tty_term_has (struct tty_term*,int ) ;
 int tty_use_margin (struct tty*) ;

void
tty_cursor(struct tty *tty, u_int cx, u_int cy)
{
 struct tty_term *term = tty->term;
 u_int thisx, thisy;
 int change;

 if (cx > tty->sx - 1)
  cx = tty->sx - 1;

 thisx = tty->cx;
 thisy = tty->cy;


 if (cx == thisx && cy == thisy)
  return;


 if (thisx > tty->sx - 1)
  goto absolute;


 if (cx == 0 && cy == 0 && tty_term_has(term, TTYC_HOME)) {
  tty_putcode(tty, TTYC_HOME);
  goto out;
 }


 if (cx == 0 && cy == thisy + 1 && thisy != tty->rlower &&
     (!tty_use_margin(tty) || tty->rleft == 0)) {
  tty_putc(tty, '\r');
  tty_putc(tty, '\n');
  goto out;
 }


 if (cy == thisy) {





  if (cx == 0 && (!tty_use_margin(tty) || tty->rleft == 0)) {
   tty_putc(tty, '\r');
   goto out;
  }


  if (cx == thisx - 1 && tty_term_has(term, TTYC_CUB1)) {
   tty_putcode(tty, TTYC_CUB1);
   goto out;
  }


  if (cx == thisx + 1 && tty_term_has(term, TTYC_CUF1)) {
   tty_putcode(tty, TTYC_CUF1);
   goto out;
  }


  change = thisx - cx;





  if ((u_int) abs(change) > cx && tty_term_has(term, TTYC_HPA)) {
   tty_putcode1(tty, TTYC_HPA, cx);
   goto out;
  } else if (change > 0 && tty_term_has(term, TTYC_CUB)) {
   if (change == 2 && tty_term_has(term, TTYC_CUB1)) {
    tty_putcode(tty, TTYC_CUB1);
    tty_putcode(tty, TTYC_CUB1);
    goto out;
   }
   tty_putcode1(tty, TTYC_CUB, change);
   goto out;
  } else if (change < 0 && tty_term_has(term, TTYC_CUF)) {
   tty_putcode1(tty, TTYC_CUF, -change);
   goto out;
  }
 } else if (cx == thisx) {





  if (thisy != tty->rupper &&
      cy == thisy - 1 && tty_term_has(term, TTYC_CUU1)) {
   tty_putcode(tty, TTYC_CUU1);
   goto out;
  }


  if (thisy != tty->rlower &&
      cy == thisy + 1 && tty_term_has(term, TTYC_CUD1)) {
   tty_putcode(tty, TTYC_CUD1);
   goto out;
  }


  change = thisy - cy;





  if ((u_int) abs(change) > cy ||
      (change < 0 && cy - change > tty->rlower) ||
      (change > 0 && cy - change < tty->rupper)) {
       if (tty_term_has(term, TTYC_VPA)) {
        tty_putcode1(tty, TTYC_VPA, cy);
        goto out;
       }
  } else if (change > 0 && tty_term_has(term, TTYC_CUU)) {
   tty_putcode1(tty, TTYC_CUU, change);
   goto out;
  } else if (change < 0 && tty_term_has(term, TTYC_CUD)) {
   tty_putcode1(tty, TTYC_CUD, -change);
   goto out;
  }
 }

absolute:

 tty_putcode2(tty, TTYC_CUP, cy, cx);

out:
 tty->cx = cx;
 tty->cy = cy;
}
