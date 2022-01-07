
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char lexchar; int text; } ;
typedef TYPE_1__ js_State ;


 int TK_STRING ;
 scalar_t__ jsY_accept (TYPE_1__*,char) ;
 int jsY_error (TYPE_1__*,char*) ;
 int jsY_expect (TYPE_1__*,char) ;
 int jsY_next (TYPE_1__*) ;
 int js_intern (TYPE_1__*,char const*) ;
 int lexjsonescape (TYPE_1__*) ;
 char* textend (TYPE_1__*) ;
 int textinit (TYPE_1__*) ;
 int textpush (TYPE_1__*,int) ;

__attribute__((used)) static int lexjsonstring(js_State *J)
{
 const char *s;

 textinit(J);

 while (J->lexchar != '"') {
  if (J->lexchar == 0)
   jsY_error(J, "unterminated string");
  else if (J->lexchar < 32)
   jsY_error(J, "invalid control character in string");
  else if (jsY_accept(J, '\\'))
   lexjsonescape(J);
  else {
   textpush(J, J->lexchar);
   jsY_next(J);
  }
 }
 jsY_expect(J, '"');

 s = textend(J);

 J->text = js_intern(J, s);
 return TK_STRING;
}
