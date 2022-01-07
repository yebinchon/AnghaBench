
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int flags; size_t discarded; int event_out; int out; struct client* client; } ;
struct client {size_t written; int name; } ;


 int TTY_BLOCK ;
 int TTY_STARTED ;
 int evbuffer_add (int ,char const*,size_t) ;
 int event_add (int *,int *) ;
 int log_debug (char*,int ,int,char const*) ;
 int tty_log_fd ;
 int write (int,char const*,size_t) ;

__attribute__((used)) static void
tty_add(struct tty *tty, const char *buf, size_t len)
{
 struct client *c = tty->client;

 if (tty->flags & TTY_BLOCK) {
  tty->discarded += len;
  return;
 }

 evbuffer_add(tty->out, buf, len);
 log_debug("%s: %.*s", c->name, (int)len, buf);
 c->written += len;

 if (tty_log_fd != -1)
  write(tty_log_fd, buf, len);
 if (tty->flags & TTY_STARTED)
  event_add(&tty->event_out, ((void*)0));
}
