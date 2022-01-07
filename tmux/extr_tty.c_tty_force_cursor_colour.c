
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int ccolour; } ;


 int TTYC_CR ;
 int TTYC_CS ;
 int free (int ) ;
 int tty_putcode (struct tty*,int ) ;
 int tty_putcode_ptr1 (struct tty*,int ,char const*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void
tty_force_cursor_colour(struct tty *tty, const char *ccolour)
{
 if (*ccolour == '\0')
  tty_putcode(tty, TTYC_CR);
 else
  tty_putcode_ptr1(tty, TTYC_CS, ccolour);
 free(tty->ccolour);
 tty->ccolour = xstrdup(ccolour);
}
