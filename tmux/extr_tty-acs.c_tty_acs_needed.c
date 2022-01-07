
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int flags; int term; } ;


 int TTYC_U8 ;
 int TTY_UTF8 ;
 scalar_t__ tty_term_has (int ,int ) ;
 scalar_t__ tty_term_number (int ,int ) ;

int
tty_acs_needed(struct tty *tty)
{
 if (tty == ((void*)0))
  return (0);
 if (tty_term_has(tty->term, TTYC_U8) &&
     tty_term_number(tty->term, TTYC_U8) == 0)
  return (1);

 if (tty->flags & TTY_UTF8)
  return (0);
 return (1);
}
