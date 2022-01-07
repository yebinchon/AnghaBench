
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* source; char lexchar; int number; } ;
typedef TYPE_1__ js_State ;


 int TK_NUMBER ;
 scalar_t__ isdigit (char) ;
 scalar_t__ jsY_accept (TYPE_1__*,char) ;
 int jsY_error (TYPE_1__*,char*) ;
 int jsY_next (TYPE_1__*) ;
 int js_strtod (char const*,int *) ;

__attribute__((used)) static int lexjsonnumber(js_State *J)
{
 const char *s = J->source - 1;

 if (J->lexchar == '-')
  jsY_next(J);

 if (J->lexchar == '0')
  jsY_next(J);
 else if (J->lexchar >= '1' && J->lexchar <= '9')
  while (isdigit(J->lexchar))
   jsY_next(J);
 else
  jsY_error(J, "unexpected non-digit");

 if (jsY_accept(J, '.')) {
  if (isdigit(J->lexchar))
   while (isdigit(J->lexchar))
    jsY_next(J);
  else
   jsY_error(J, "missing digits after decimal point");
 }

 if (jsY_accept(J, 'e') || jsY_accept(J, 'E')) {
  if (J->lexchar == '-' || J->lexchar == '+')
   jsY_next(J);
  if (isdigit(J->lexchar))
   while (isdigit(J->lexchar))
    jsY_next(J);
  else
   jsY_error(J, "missing digits after exponent indicator");
 }

 J->number = js_strtod(s, ((void*)0));
 return TK_NUMBER;
}
