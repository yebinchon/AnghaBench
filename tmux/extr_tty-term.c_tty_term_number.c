
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_term {TYPE_2__* codes; } ;
typedef enum tty_code_code { ____Placeholder_tty_code_code } tty_code_code ;
struct TYPE_3__ {int number; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ value; } ;


 scalar_t__ TTYCODE_NUMBER ;
 int fatalx (char*,int) ;
 int tty_term_has (struct tty_term*,int) ;

int
tty_term_number(struct tty_term *term, enum tty_code_code code)
{
 if (!tty_term_has(term, code))
  return (0);
 if (term->codes[code].type != TTYCODE_NUMBER)
  fatalx("not a number: %d", code);
 return (term->codes[code].value.number);
}
