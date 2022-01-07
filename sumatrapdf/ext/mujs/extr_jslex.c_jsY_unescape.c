
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lexchar; } ;
typedef TYPE_1__ js_State ;


 scalar_t__ jsY_accept (TYPE_1__*,unsigned char) ;
 int jsY_error (TYPE_1__*,char*) ;
 int jsY_ishex (int) ;
 int jsY_next (TYPE_1__*) ;
 int jsY_tohex (int) ;

__attribute__((used)) static void jsY_unescape(js_State *J)
{
 if (jsY_accept(J, '\\')) {
  if (jsY_accept(J, 'u')) {
   int x = 0;
   if (!jsY_ishex(J->lexchar)) { goto error; } x |= jsY_tohex(J->lexchar) << 12; jsY_next(J);
   if (!jsY_ishex(J->lexchar)) { goto error; } x |= jsY_tohex(J->lexchar) << 8; jsY_next(J);
   if (!jsY_ishex(J->lexchar)) { goto error; } x |= jsY_tohex(J->lexchar) << 4; jsY_next(J);
   if (!jsY_ishex(J->lexchar)) { goto error; } x |= jsY_tohex(J->lexchar);
   J->lexchar = x;
   return;
  }
error:
  jsY_error(J, "unexpected escape sequence");
 }
}
