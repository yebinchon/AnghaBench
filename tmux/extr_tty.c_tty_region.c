
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tty {scalar_t__ rlower; scalar_t__ rupper; scalar_t__ cx; scalar_t__ sx; scalar_t__ cy; int term; } ;


 int TTYC_CSR ;
 scalar_t__ UINT_MAX ;
 int tty_cursor (struct tty*,int ,scalar_t__) ;
 int tty_putcode2 (struct tty*,int ,scalar_t__,scalar_t__) ;
 int tty_term_has (int ,int ) ;

__attribute__((used)) static void
tty_region(struct tty *tty, u_int rupper, u_int rlower)
{
 if (tty->rlower == rlower && tty->rupper == rupper)
  return;
 if (!tty_term_has(tty->term, TTYC_CSR))
  return;

 tty->rupper = rupper;
 tty->rlower = rlower;







 if (tty->cx >= tty->sx)
  tty_cursor(tty, 0, tty->cy);

 tty_putcode2(tty, TTYC_CSR, tty->rupper, tty->rlower);
 tty->cx = tty->cy = UINT_MAX;
}
