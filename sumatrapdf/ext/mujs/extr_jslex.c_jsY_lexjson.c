
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char lexchar; int line; int lexline; } ;
typedef TYPE_1__ js_State ;


 int TK_FALSE ;
 int TK_NULL ;
 int TK_TRUE ;
 int jsY_error (TYPE_1__*,char*,int) ;
 int jsY_expect (TYPE_1__*,char) ;
 scalar_t__ jsY_iswhite (char) ;
 int jsY_next (TYPE_1__*) ;
 int lexjsonnumber (TYPE_1__*) ;
 int lexjsonstring (TYPE_1__*) ;

int jsY_lexjson(js_State *J)
{
 while (1) {
  J->lexline = J->line;

  while (jsY_iswhite(J->lexchar) || J->lexchar == '\n')
   jsY_next(J);

  if ((J->lexchar >= '0' && J->lexchar <= '9') || J->lexchar == '-')
   return lexjsonnumber(J);

  switch (J->lexchar) {
  case ',': jsY_next(J); return ',';
  case ':': jsY_next(J); return ':';
  case '[': jsY_next(J); return '[';
  case ']': jsY_next(J); return ']';
  case '{': jsY_next(J); return '{';
  case '}': jsY_next(J); return '}';

  case '"':
   jsY_next(J);
   return lexjsonstring(J);

  case 'f':
   jsY_next(J); jsY_expect(J, 'a'); jsY_expect(J, 'l'); jsY_expect(J, 's'); jsY_expect(J, 'e');
   return TK_FALSE;

  case 'n':
   jsY_next(J); jsY_expect(J, 'u'); jsY_expect(J, 'l'); jsY_expect(J, 'l');
   return TK_NULL;

  case 't':
   jsY_next(J); jsY_expect(J, 'r'); jsY_expect(J, 'u'); jsY_expect(J, 'e');
   return TK_TRUE;

  case 0:
   return 0;
  }

  if (J->lexchar >= 0x20 && J->lexchar <= 0x7E)
   jsY_error(J, "unexpected character: '%c'", J->lexchar);
  jsY_error(J, "unexpected character: \\u%04X", J->lexchar);
 }
}
