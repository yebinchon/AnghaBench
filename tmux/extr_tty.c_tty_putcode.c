
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int term; } ;
typedef enum tty_code_code { ____Placeholder_tty_code_code } tty_code_code ;


 int tty_puts (struct tty*,int ) ;
 int tty_term_string (int ,int) ;

void
tty_putcode(struct tty *tty, enum tty_code_code code)
{
 tty_puts(tty, tty_term_string(tty->term, code));
}
