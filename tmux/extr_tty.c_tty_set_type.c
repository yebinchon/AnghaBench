
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int term_type; } ;


 int tty_puts (struct tty*,char*) ;
 scalar_t__ tty_use_margin (struct tty*) ;

void
tty_set_type(struct tty *tty, int type)
{
 tty->term_type = type;

 if (tty_use_margin(tty))
  tty_puts(tty, "\033[?69h");
}
