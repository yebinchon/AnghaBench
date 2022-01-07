
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int term; } ;


 int TTYC_SITM ;
 int TTYC_SMSO ;
 int global_options ;
 char* options_get_string (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int tty_putcode (struct tty*,int ) ;
 scalar_t__ tty_term_has (int ,int ) ;

__attribute__((used)) static void
tty_set_italics(struct tty *tty)
{
 const char *s;

 if (tty_term_has(tty->term, TTYC_SITM)) {
  s = options_get_string(global_options, "default-terminal");
  if (strcmp(s, "screen") != 0 && strncmp(s, "screen-", 7) != 0) {
   tty_putcode(tty, TTYC_SITM);
   return;
  }
 }
 tty_putcode(tty, TTYC_SMSO);
}
