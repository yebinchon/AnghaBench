
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lexchar; } ;
typedef TYPE_1__ js_State ;


 int jsY_error (TYPE_1__*,char*) ;
 scalar_t__ jsY_ishex (int ) ;
 int jsY_next (TYPE_1__*) ;
 double jsY_tohex (int ) ;

__attribute__((used)) static double lexhex(js_State *J)
{
 double n = 0;
 if (!jsY_ishex(J->lexchar))
  jsY_error(J, "malformed hexadecimal number");
 while (jsY_ishex(J->lexchar)) {
  n = n * 16 + jsY_tohex(J->lexchar);
  jsY_next(J);
 }
 return n;
}
