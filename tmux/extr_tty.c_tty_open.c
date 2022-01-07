
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int flags; int timer; int * out; int fd; int event_out; int * in; int event_in; int * term; int term_name; } ;


 int EV_PERSIST ;
 int EV_READ ;
 int EV_WRITE ;
 int TTY_BLOCK ;
 int TTY_FREEZE ;
 int TTY_NOCURSOR ;
 int TTY_OPENED ;
 int TTY_TIMER ;
 void* evbuffer_new () ;
 int event_set (int *,int ,int,int ,struct tty*) ;
 int evtimer_set (int *,int ,struct tty*) ;
 int fatal (char*) ;
 int tty_close (struct tty*) ;
 int tty_keys_build (struct tty*) ;
 int tty_read_callback ;
 int tty_start_tty (struct tty*) ;
 int * tty_term_find (int ,int ,char**) ;
 int tty_timer_callback ;
 int tty_write_callback ;

int
tty_open(struct tty *tty, char **cause)
{
 tty->term = tty_term_find(tty->term_name, tty->fd, cause);
 if (tty->term == ((void*)0)) {
  tty_close(tty);
  return (-1);
 }
 tty->flags |= TTY_OPENED;

 tty->flags &= ~(TTY_NOCURSOR|TTY_FREEZE|TTY_BLOCK|TTY_TIMER);

 event_set(&tty->event_in, tty->fd, EV_PERSIST|EV_READ,
     tty_read_callback, tty);
 tty->in = evbuffer_new();
 if (tty->in == ((void*)0))
  fatal("out of memory");

 event_set(&tty->event_out, tty->fd, EV_WRITE, tty_write_callback, tty);
 tty->out = evbuffer_new();
 if (tty->out == ((void*)0))
  fatal("out of memory");

 evtimer_set(&tty->timer, tty_timer_callback, tty);

 tty_start_tty(tty);

 tty_keys_build(tty);

 return (0);
}
