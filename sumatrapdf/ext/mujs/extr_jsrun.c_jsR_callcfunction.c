
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_Value ;
typedef int js_State ;
typedef int (* js_CFunction ) (int *) ;


 scalar_t__ BOT ;
 scalar_t__ TOP ;
 int js_pushundefined (int *) ;
 int js_pushvalue (int *,int ) ;
 int * stackidx (int *,int) ;

__attribute__((used)) static void jsR_callcfunction(js_State *J, int n, int min, js_CFunction F)
{
 int i;
 js_Value v;

 for (i = n; i < min; ++i)
  js_pushundefined(J);

 F(J);
 v = *stackidx(J, -1);
 TOP = --BOT;
 js_pushvalue(J, v);
}
