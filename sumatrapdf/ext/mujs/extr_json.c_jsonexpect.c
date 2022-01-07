
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lookahead; } ;
typedef TYPE_1__ js_State ;


 int jsY_tokenstring (int) ;
 int js_syntaxerror (TYPE_1__*,char*,int ,int ) ;
 int jsonaccept (TYPE_1__*,int) ;

__attribute__((used)) static void jsonexpect(js_State *J, int t)
{
 if (!jsonaccept(J, t))
  js_syntaxerror(J, "JSON: unexpected token: %s (expected %s)",
    jsY_tokenstring(J->lookahead), jsY_tokenstring(t));
}
