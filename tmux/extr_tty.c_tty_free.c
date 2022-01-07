
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int term_name; int ccolour; } ;


 int free (int ) ;
 int tty_close (struct tty*) ;

void
tty_free(struct tty *tty)
{
 tty_close(tty);

 free(tty->ccolour);
 free(tty->term_name);
}
