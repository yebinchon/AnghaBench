
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int lexchar; int text; } ;
typedef TYPE_1__ js_State ;


 int TK_STRING ;
 scalar_t__ jsY_accept (TYPE_1__*,char) ;
 int jsY_error (TYPE_1__*,char*) ;
 int jsY_expect (TYPE_1__*,int) ;
 int jsY_next (TYPE_1__*) ;
 int js_intern (TYPE_1__*,char const*) ;
 scalar_t__ lexescape (TYPE_1__*) ;
 char* textend (TYPE_1__*) ;
 int textinit (TYPE_1__*) ;
 int textpush (TYPE_1__*,char) ;

__attribute__((used)) static int lexstring(js_State *J)
{
 const char *s;

 int q = J->lexchar;
 jsY_next(J);

 textinit(J);

 while (J->lexchar != q) {
  if (J->lexchar == 0 || J->lexchar == '\n')
   jsY_error(J, "string not terminated");
  if (jsY_accept(J, '\\')) {
   if (lexescape(J))
    jsY_error(J, "malformed escape sequence");
  } else {
   textpush(J, J->lexchar);
   jsY_next(J);
  }
 }
 jsY_expect(J, q);

 s = textend(J);

 J->text = js_intern(J, s);
 return TK_STRING;
}
