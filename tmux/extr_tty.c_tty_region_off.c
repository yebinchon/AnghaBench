
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {scalar_t__ sy; } ;


 int tty_region (struct tty*,int ,scalar_t__) ;

void
tty_region_off(struct tty *tty)
{
 tty_region(tty, 0, tty->sy - 1);
}
