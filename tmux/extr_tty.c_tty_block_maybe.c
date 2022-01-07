
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int flags; int timer; scalar_t__ discarded; int out; struct client* client; } ;
struct timeval {int tv_usec; } ;
struct client {size_t discarded; int name; } ;


 size_t EVBUFFER_LENGTH (int ) ;
 int TTY_BLOCK ;
 int TTY_BLOCK_INTERVAL ;
 size_t TTY_BLOCK_START (struct tty*) ;
 int evbuffer_drain (int ,size_t) ;
 int evtimer_add (int *,struct timeval*) ;
 int log_debug (char*,int ,size_t) ;

__attribute__((used)) static int
tty_block_maybe(struct tty *tty)
{
 struct client *c = tty->client;
 size_t size = EVBUFFER_LENGTH(tty->out);
 struct timeval tv = { .tv_usec = TTY_BLOCK_INTERVAL };

 if (size < TTY_BLOCK_START(tty))
  return (0);

 if (tty->flags & TTY_BLOCK)
  return (1);
 tty->flags |= TTY_BLOCK;

 log_debug("%s: can't keep up, %zu discarded", c->name, size);

 evbuffer_drain(tty->out, size);
 c->discarded += size;

 tty->discarded = 0;
 evtimer_add(&tty->timer, &tv);
 return (1);
}
