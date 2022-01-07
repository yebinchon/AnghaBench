
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char lexchar; scalar_t__ number; int text; } ;
typedef TYPE_1__ js_State ;


 scalar_t__ JS_REGEXP_G ;
 scalar_t__ JS_REGEXP_I ;
 scalar_t__ JS_REGEXP_M ;
 int TK_REGEXP ;
 scalar_t__ jsY_accept (TYPE_1__*,char) ;
 int jsY_error (TYPE_1__*,char*,...) ;
 int jsY_expect (TYPE_1__*,char) ;
 scalar_t__ jsY_isidentifierpart (char) ;
 int jsY_next (TYPE_1__*) ;
 int js_intern (TYPE_1__*,char const*) ;
 char* textend (TYPE_1__*) ;
 int textinit (TYPE_1__*) ;
 int textpush (TYPE_1__*,char) ;

__attribute__((used)) static int lexregexp(js_State *J)
{
 const char *s;
 int g, m, i;
 int inclass = 0;



 textinit(J);


 while (J->lexchar != '/' || inclass) {
  if (J->lexchar == 0 || J->lexchar == '\n') {
   jsY_error(J, "regular expression not terminated");
  } else if (jsY_accept(J, '\\')) {
   if (jsY_accept(J, '/')) {
    textpush(J, '/');
   } else {
    textpush(J, '\\');
    if (J->lexchar == 0 || J->lexchar == '\n')
     jsY_error(J, "regular expression not terminated");
    textpush(J, J->lexchar);
    jsY_next(J);
   }
  } else {
   if (J->lexchar == '[' && !inclass)
    inclass = 1;
   if (J->lexchar == ']' && inclass)
    inclass = 0;
   textpush(J, J->lexchar);
   jsY_next(J);
  }
 }
 jsY_expect(J, '/');

 s = textend(J);


 g = i = m = 0;

 while (jsY_isidentifierpart(J->lexchar)) {
  if (jsY_accept(J, 'g')) ++g;
  else if (jsY_accept(J, 'i')) ++i;
  else if (jsY_accept(J, 'm')) ++m;
  else jsY_error(J, "illegal flag in regular expression: %c", J->lexchar);
 }

 if (g > 1 || i > 1 || m > 1)
  jsY_error(J, "duplicated flag in regular expression");

 J->text = js_intern(J, s);
 J->number = 0;
 if (g) J->number += JS_REGEXP_G;
 if (i) J->number += JS_REGEXP_I;
 if (m) J->number += JS_REGEXP_M;
 return TK_REGEXP;
}
