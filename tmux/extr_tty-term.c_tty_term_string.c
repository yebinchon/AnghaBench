
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_term {TYPE_2__* codes; } ;
typedef enum tty_code_code { ____Placeholder_tty_code_code } tty_code_code ;
struct TYPE_3__ {char const* string; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ value; } ;


 scalar_t__ TTYCODE_STRING ;
 int fatalx (char*,int) ;
 int tty_term_has (struct tty_term*,int) ;

const char *
tty_term_string(struct tty_term *term, enum tty_code_code code)
{
 if (!tty_term_has(term, code))
  return ("");
 if (term->codes[code].type != TTYCODE_STRING)
  fatalx("not a string: %d", code);
 return (term->codes[code].value.string);
}
