
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tty {int dummy; } ;


 int memset (char*,char,int) ;
 int tty_putn (struct tty*,char*,int,int) ;

__attribute__((used)) static void
tty_repeat_space(struct tty *tty, u_int n)
{
 static char s[500];

 if (*s != ' ')
  memset(s, ' ', sizeof s);

 while (n > sizeof s) {
  tty_putn(tty, s, sizeof s, sizeof s);
  n -= sizeof s;
 }
 if (n != 0)
  tty_putn(tty, s, n, n);
}
