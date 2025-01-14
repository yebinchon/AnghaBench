
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tty {int fd; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ errno ;
 scalar_t__ strlen (char const*) ;
 int usleep (int) ;
 scalar_t__ write (int ,char const*,scalar_t__) ;

void
tty_raw(struct tty *tty, const char *s)
{
 ssize_t n, slen;
 u_int i;

 slen = strlen(s);
 for (i = 0; i < 5; i++) {
  n = write(tty->fd, s, slen);
  if (n >= 0) {
   s += n;
   slen -= n;
   if (slen == 0)
    break;
  } else if (n == -1 && errno != EAGAIN)
   break;
  usleep(100);
 }
}
