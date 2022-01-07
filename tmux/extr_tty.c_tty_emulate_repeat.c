
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tty {int term; } ;
typedef enum tty_code_code { ____Placeholder_tty_code_code } tty_code_code ;


 int tty_putcode (struct tty*,int) ;
 int tty_putcode1 (struct tty*,int,int ) ;
 scalar_t__ tty_term_has (int ,int) ;

__attribute__((used)) static void
tty_emulate_repeat(struct tty *tty, enum tty_code_code code,
    enum tty_code_code code1, u_int n)
{
 if (tty_term_has(tty->term, code))
  tty_putcode1(tty, code, n);
 else {
  while (n-- > 0)
   tty_putcode(tty, code1);
 }
}
