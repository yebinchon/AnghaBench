
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct tty {int term_flags; TYPE_1__* client; TYPE_2__* term; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int name; } ;


 int COLOUR_FLAG_256 ;
 int COLOUR_FLAG_RGB ;
 int TERM_256COLOURS ;
 int TTYC_RGB ;
 int TTYC_SETAB ;
 int TTYC_SETAF ;
 int TTYC_SETRGBB ;
 int TTYC_SETRGBF ;
 int colour_split_rgb (int,int *,int *,int *) ;
 int log_debug (char*,int ,char*) ;
 int tty_putcode1 (struct tty*,int ,int) ;
 int tty_putcode3 (struct tty*,int ,int ,int ,int ) ;
 int tty_puts (struct tty*,char*) ;
 scalar_t__ tty_term_has (TYPE_2__*,int ) ;
 int xsnprintf (char*,int,char*,char const*,int) ;

__attribute__((used)) static int
tty_try_colour(struct tty *tty, int colour, const char *type)
{
 u_char r, g, b;
 char s[32];

 if (colour & COLOUR_FLAG_256) {
  if ((tty->term_flags & TERM_256COLOURS) ||
      tty_term_has(tty->term, TTYC_RGB))
   goto fallback_256;





  if (tty->term->flags & TERM_256COLOURS) {
   if (*type == '3') {
    if (!tty_term_has(tty->term, TTYC_SETAF))
     goto fallback_256;
    tty_putcode1(tty, TTYC_SETAF, colour & 0xff);
   } else {
    if (!tty_term_has(tty->term, TTYC_SETAB))
     goto fallback_256;
    tty_putcode1(tty, TTYC_SETAB, colour & 0xff);
   }
   return (0);
  }
  goto fallback_256;
 }

 if (colour & COLOUR_FLAG_RGB) {
  if (*type == '3') {
   if (!tty_term_has(tty->term, TTYC_SETRGBF))
    return (-1);
   colour_split_rgb(colour & 0xffffff, &r, &g, &b);
   tty_putcode3(tty, TTYC_SETRGBF, r, g, b);
  } else {
   if (!tty_term_has(tty->term, TTYC_SETRGBB))
    return (-1);
   colour_split_rgb(colour & 0xffffff, &r, &g, &b);
   tty_putcode3(tty, TTYC_SETRGBB, r, g, b);
  }
  return (0);
 }

 return (-1);

fallback_256:
 xsnprintf(s, sizeof s, "\033[%s;5;%dm", type, colour & 0xff);
 log_debug("%s: 256 colour fallback: %s", tty->client->name, s);
 tty_puts(tty, s);
 return (0);
}
