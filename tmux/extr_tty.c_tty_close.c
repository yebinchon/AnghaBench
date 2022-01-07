
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int flags; int fd; int term; int event_out; int out; int event_in; int in; int key_timer; } ;


 int TTY_OPENED ;
 int close (int) ;
 int evbuffer_free (int ) ;
 int event_del (int *) ;
 scalar_t__ event_initialized (int *) ;
 int evtimer_del (int *) ;
 int tty_keys_free (struct tty*) ;
 int tty_stop_tty (struct tty*) ;
 int tty_term_free (int ) ;

void
tty_close(struct tty *tty)
{
 if (event_initialized(&tty->key_timer))
  evtimer_del(&tty->key_timer);
 tty_stop_tty(tty);

 if (tty->flags & TTY_OPENED) {
  evbuffer_free(tty->in);
  event_del(&tty->event_in);
  evbuffer_free(tty->out);
  event_del(&tty->event_out);

  tty_term_free(tty->term);
  tty_keys_free(tty);

  tty->flags &= ~TTY_OPENED;
 }

 if (tty->fd != -1) {
  close(tty->fd);
  tty->fd = -1;
 }
}
