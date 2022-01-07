
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {scalar_t__ ws_row; } ;
struct tty {int flags; scalar_t__ cstyle; int mode; int fd; int term; int tio; int event_out; int event_in; int timer; } ;


 int MODE_BRACKETPASTE ;
 int TCSANOW ;
 int TIOCGWINSZ ;
 int TTYC_CLEAR ;
 int TTYC_CNORM ;
 int TTYC_CR ;
 int TTYC_CSR ;
 int TTYC_KMOUS ;
 int TTYC_RMACS ;
 int TTYC_RMCUP ;
 int TTYC_RMKX ;
 int TTYC_SE ;
 int TTYC_SGR0 ;
 int TTYC_SS ;
 int TTYC_XT ;
 int TTY_BLOCK ;
 int TTY_FOCUS ;
 int TTY_STARTED ;
 int event_del (int *) ;
 int ioctl (int ,int ,struct winsize*) ;
 int setblocking (int ,int) ;
 int tcsetattr (int ,int ,int *) ;
 scalar_t__ tty_acs_needed (struct tty*) ;
 int tty_raw (struct tty*,char*) ;
 scalar_t__ tty_term_flag (int ,int ) ;
 scalar_t__ tty_term_has (int ,int ) ;
 char* tty_term_string (int ,int ) ;
 char* tty_term_string1 (int ,int ,int ) ;
 char* tty_term_string2 (int ,int ,int ,scalar_t__) ;
 scalar_t__ tty_use_margin (struct tty*) ;

void
tty_stop_tty(struct tty *tty)
{
 struct winsize ws;

 if (!(tty->flags & TTY_STARTED))
  return;
 tty->flags &= ~TTY_STARTED;

 event_del(&tty->timer);
 tty->flags &= ~TTY_BLOCK;

 event_del(&tty->event_in);
 event_del(&tty->event_out);






 if (ioctl(tty->fd, TIOCGWINSZ, &ws) == -1)
  return;
 if (tcsetattr(tty->fd, TCSANOW, &tty->tio) == -1)
  return;

 tty_raw(tty, tty_term_string2(tty->term, TTYC_CSR, 0, ws.ws_row - 1));
 if (tty_acs_needed(tty))
  tty_raw(tty, tty_term_string(tty->term, TTYC_RMACS));
 tty_raw(tty, tty_term_string(tty->term, TTYC_SGR0));
 tty_raw(tty, tty_term_string(tty->term, TTYC_RMKX));
 tty_raw(tty, tty_term_string(tty->term, TTYC_CLEAR));
 if (tty_term_has(tty->term, TTYC_SS) && tty->cstyle != 0) {
  if (tty_term_has(tty->term, TTYC_SE))
   tty_raw(tty, tty_term_string(tty->term, TTYC_SE));
  else
   tty_raw(tty, tty_term_string1(tty->term, TTYC_SS, 0));
 }
 if (tty->mode & MODE_BRACKETPASTE)
  tty_raw(tty, "\033[?2004l");
 tty_raw(tty, tty_term_string(tty->term, TTYC_CR));

 tty_raw(tty, tty_term_string(tty->term, TTYC_CNORM));
 if (tty_term_has(tty->term, TTYC_KMOUS))
  tty_raw(tty, "\033[?1000l\033[?1002l\033[?1006l\033[?1005l");

 if (tty_term_flag(tty->term, TTYC_XT)) {
  if (tty->flags & TTY_FOCUS) {
   tty->flags &= ~TTY_FOCUS;
   tty_raw(tty, "\033[?1004l");
  }
 }

 if (tty_use_margin(tty))
  tty_raw(tty, "\033[?69l");
 tty_raw(tty, tty_term_string(tty->term, TTYC_RMCUP));

 setblocking(tty->fd, 1);
}
