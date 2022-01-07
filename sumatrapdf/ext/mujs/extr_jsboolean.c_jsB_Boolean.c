
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_pushboolean (int *,int ) ;
 int js_toboolean (int *,int) ;

__attribute__((used)) static void jsB_Boolean(js_State *J)
{
 js_pushboolean(J, js_toboolean(J, 1));
}
