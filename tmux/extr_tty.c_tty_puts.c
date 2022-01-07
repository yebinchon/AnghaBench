
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int strlen (char const*) ;
 int tty_add (struct tty*,char const*,int ) ;

void
tty_puts(struct tty *tty, const char *s)
{
 if (*s != '\0')
  tty_add(tty, s, strlen(s));
}
