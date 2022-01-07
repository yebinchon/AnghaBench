
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {scalar_t__ sx; } ;


 int tty_margin (struct tty*,int ,scalar_t__) ;

void
tty_margin_off(struct tty *tty)
{
 tty_margin(tty, 0, tty->sx - 1);
}
