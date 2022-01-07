
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char lookahead; scalar_t__ newline; } ;
typedef TYPE_1__ js_State ;


 int jsP_error (TYPE_1__*,char*,int ) ;
 int jsP_next (TYPE_1__*) ;
 int jsY_tokenstring (char) ;

__attribute__((used)) static void semicolon(js_State *J)
{
 if (J->lookahead == ';') {
  jsP_next(J);
  return;
 }
 if (J->newline || J->lookahead == '}' || J->lookahead == 0)
  return;
 jsP_error(J, "unexpected token: %s (expected ';')", jsY_tokenstring(J->lookahead));
}
