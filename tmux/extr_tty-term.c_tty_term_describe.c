
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_term {TYPE_2__* codes; } ;
typedef enum tty_code_code { ____Placeholder_tty_code_code } tty_code_code ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {char* number; int flag; int string; } ;
struct TYPE_5__ {int type; TYPE_1__ value; } ;






 int VIS_CSTYLE ;
 int VIS_NL ;
 int VIS_OCTAL ;
 int VIS_TAB ;
 int strnvis (char*,int ,int,int) ;
 TYPE_3__* tty_term_codes ;
 int xsnprintf (char*,int,char*,int,int ,...) ;

const char *
tty_term_describe(struct tty_term *term, enum tty_code_code code)
{
 static char s[256];
 char out[128];

 switch (term->codes[code].type) {
 case 130:
  xsnprintf(s, sizeof s, "%4u: %s: [missing]",
      code, tty_term_codes[code].name);
  break;
 case 128:
  strnvis(out, term->codes[code].value.string, sizeof out,
      VIS_OCTAL|VIS_CSTYLE|VIS_TAB|VIS_NL);
  xsnprintf(s, sizeof s, "%4u: %s: (string) %s",
      code, tty_term_codes[code].name,
      out);
  break;
 case 129:
  xsnprintf(s, sizeof s, "%4u: %s: (number) %d",
      code, tty_term_codes[code].name,
      term->codes[code].value.number);
  break;
 case 131:
  xsnprintf(s, sizeof s, "%4u: %s: (flag) %s",
      code, tty_term_codes[code].name,
      term->codes[code].value.flag ? "true" : "false");
  break;
 }
 return (s);
}
