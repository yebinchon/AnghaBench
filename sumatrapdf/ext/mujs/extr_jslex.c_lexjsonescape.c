
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lexchar; } ;
typedef TYPE_1__ js_State ;


 int jsY_error (TYPE_1__*,char*) ;
 int jsY_ishex (int) ;
 int jsY_next (TYPE_1__*) ;
 int jsY_tohex (int) ;
 int textpush (TYPE_1__*,char) ;

__attribute__((used)) static int lexjsonescape(js_State *J)
{
 int x = 0;



 switch (J->lexchar) {
 default: jsY_error(J, "invalid escape sequence");
 case 'u':
  jsY_next(J);
  if (!jsY_ishex(J->lexchar)) return 1; else { x |= jsY_tohex(J->lexchar) << 12; jsY_next(J); }
  if (!jsY_ishex(J->lexchar)) return 1; else { x |= jsY_tohex(J->lexchar) << 8; jsY_next(J); }
  if (!jsY_ishex(J->lexchar)) return 1; else { x |= jsY_tohex(J->lexchar) << 4; jsY_next(J); }
  if (!jsY_ishex(J->lexchar)) return 1; else { x |= jsY_tohex(J->lexchar); jsY_next(J); }
  textpush(J, x);
  break;
 case '"': textpush(J, '"'); jsY_next(J); break;
 case '\\': textpush(J, '\\'); jsY_next(J); break;
 case '/': textpush(J, '/'); jsY_next(J); break;
 case 'b': textpush(J, '\b'); jsY_next(J); break;
 case 'f': textpush(J, '\f'); jsY_next(J); break;
 case 'n': textpush(J, '\n'); jsY_next(J); break;
 case 'r': textpush(J, '\r'); jsY_next(J); break;
 case 't': textpush(J, '\t'); jsY_next(J); break;
 }
 return 0;
}
