
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int fd; int term_type; scalar_t__ term_flags; scalar_t__ flags; void* ccolour; scalar_t__ cstyle; struct client* client; void* term_name; } ;
struct client {int dummy; } ;


 int TTY_UNKNOWN ;
 int isatty (int) ;
 int memset (struct tty*,int ,int) ;
 void* xstrdup (char*) ;

int
tty_init(struct tty *tty, struct client *c, int fd, char *term)
{
 if (!isatty(fd))
  return (-1);

 memset(tty, 0, sizeof *tty);

 if (term == ((void*)0) || *term == '\0')
  tty->term_name = xstrdup("unknown");
 else
  tty->term_name = xstrdup(term);

 tty->fd = fd;
 tty->client = c;

 tty->cstyle = 0;
 tty->ccolour = xstrdup("");

 tty->flags = 0;

 tty->term_flags = 0;
 tty->term_type = TTY_UNKNOWN;

 return (0);
}
