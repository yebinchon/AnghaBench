
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int fd; int * mouse_drag_release; int * mouse_drag_update; scalar_t__ mouse_drag_flag; int flags; int term; int tio; int event_in; struct client* client; } ;
struct termios {int c_iflag; int c_oflag; int c_lflag; int* c_cc; } ;
struct client {int name; } ;


 int ECHO ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOKE ;
 int ECHONL ;
 int ECHOPRT ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int IMAXBEL ;
 int INLCR ;
 int ISIG ;
 int ISTRIP ;
 int IXOFF ;
 int IXON ;
 int OCRNL ;
 int ONLCR ;
 int ONLRET ;
 int OPOST ;
 int TCIOFLUSH ;
 int TCSANOW ;
 int TTYC_CLEAR ;
 int TTYC_CNORM ;
 int TTYC_ENACS ;
 int TTYC_KMOUS ;
 int TTYC_SMCUP ;
 int TTYC_SMKX ;
 int TTYC_XT ;
 int TTY_FOCUS ;
 int TTY_STARTED ;
 size_t VMIN ;
 size_t VTIME ;
 int event_add (int *,int *) ;
 int global_options ;
 int log_debug (char*,int ) ;
 int memcpy (struct termios*,int *,int) ;
 scalar_t__ options_get_number (int ,char*) ;
 int setblocking (int,int ) ;
 int tcflush (int,int ) ;
 scalar_t__ tcgetattr (int,int *) ;
 scalar_t__ tcsetattr (int,int ,struct termios*) ;
 scalar_t__ tty_acs_needed (struct tty*) ;
 int tty_force_cursor_colour (struct tty*,char*) ;
 int tty_invalidate (struct tty*) ;
 int tty_putcode (struct tty*,int ) ;
 int tty_puts (struct tty*,char*) ;
 scalar_t__ tty_term_flag (int ,int ) ;
 scalar_t__ tty_term_has (int ,int ) ;

void
tty_start_tty(struct tty *tty)
{
 struct client *c = tty->client;
 struct termios tio;

 if (tty->fd != -1 && tcgetattr(tty->fd, &tty->tio) == 0) {
  setblocking(tty->fd, 0);
  event_add(&tty->event_in, ((void*)0));

  memcpy(&tio, &tty->tio, sizeof tio);
  tio.c_iflag &= ~(IXON|IXOFF|ICRNL|INLCR|IGNCR|IMAXBEL|ISTRIP);
  tio.c_iflag |= IGNBRK;
  tio.c_oflag &= ~(OPOST|ONLCR|OCRNL|ONLRET);
  tio.c_lflag &= ~(IEXTEN|ICANON|ECHO|ECHOE|ECHONL|ECHOCTL|
      ECHOPRT|ECHOKE|ISIG);
  tio.c_cc[VMIN] = 1;
  tio.c_cc[VTIME] = 0;
  if (tcsetattr(tty->fd, TCSANOW, &tio) == 0)
   tcflush(tty->fd, TCIOFLUSH);
 }

 tty_putcode(tty, TTYC_SMCUP);

 tty_putcode(tty, TTYC_SMKX);
 tty_putcode(tty, TTYC_CLEAR);

 if (tty_acs_needed(tty)) {
  log_debug("%s: using capabilities for ACS", c->name);
  tty_putcode(tty, TTYC_ENACS);
 } else
  log_debug("%s: using UTF-8 for ACS", c->name);

 tty_putcode(tty, TTYC_CNORM);
 if (tty_term_has(tty->term, TTYC_KMOUS))
  tty_puts(tty, "\033[?1000l\033[?1002l\033[?1006l\033[?1005l");

 if (tty_term_flag(tty->term, TTYC_XT)) {
  if (options_get_number(global_options, "focus-events")) {
   tty->flags |= TTY_FOCUS;
   tty_puts(tty, "\033[?1004h");
  }
  tty_puts(tty, "\033[c");
 }

 tty->flags |= TTY_STARTED;
 tty_invalidate(tty);

 tty_force_cursor_colour(tty, "");

 tty->mouse_drag_flag = 0;
 tty->mouse_drag_update = ((void*)0);
 tty->mouse_drag_release = ((void*)0);
}
