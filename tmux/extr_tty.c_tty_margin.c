
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tty {scalar_t__ rleft; scalar_t__ rright; int sx; int cy; int cx; int rlower; int rupper; } ;


 int TTYC_CSR ;
 int UINT_MAX ;
 int snprintf (char*,int,char*,...) ;
 int tty_putcode2 (struct tty*,int ,int ,int ) ;
 int tty_puts (struct tty*,char*) ;
 int tty_use_margin (struct tty*) ;

__attribute__((used)) static void
tty_margin(struct tty *tty, u_int rleft, u_int rright)
{
 char s[64];

 if (!tty_use_margin(tty))
  return;
 if (tty->rleft == rleft && tty->rright == rright)
  return;

 tty_putcode2(tty, TTYC_CSR, tty->rupper, tty->rlower);

 tty->rleft = rleft;
 tty->rright = rright;

 if (rleft == 0 && rright == tty->sx - 1)
  snprintf(s, sizeof s, "\033[s");
 else
  snprintf(s, sizeof s, "\033[%u;%us", rleft + 1, rright + 1);
 tty_puts(tty, s);
 tty->cx = tty->cy = UINT_MAX;
}
