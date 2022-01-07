
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int term; } ;
typedef enum tty_code_code { ____Placeholder_tty_code_code } tty_code_code ;


 int tty_puts (struct tty*,int ) ;
 int tty_term_string3 (int ,int,int,int,int) ;

void
tty_putcode3(struct tty *tty, enum tty_code_code code, int a, int b, int c)
{
 if (a < 0 || b < 0 || c < 0)
  return;
 tty_puts(tty, tty_term_string3(tty->term, code, a, b, c));
}
