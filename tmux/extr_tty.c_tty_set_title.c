
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int term; } ;


 int TTYC_FSL ;
 int TTYC_TSL ;
 int tty_putcode (struct tty*,int ) ;
 int tty_puts (struct tty*,char const*) ;
 int tty_term_has (int ,int ) ;

void
tty_set_title(struct tty *tty, const char *title)
{
 if (!tty_term_has(tty->term, TTYC_TSL) ||
     !tty_term_has(tty->term, TTYC_FSL))
  return;

 tty_putcode(tty, TTYC_TSL);
 tty_puts(tty, title);
 tty_putcode(tty, TTYC_FSL);
}
