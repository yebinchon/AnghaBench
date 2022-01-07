
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_newboolean (int *,int ) ;
 int js_toboolean (int *,int) ;

__attribute__((used)) static void jsB_new_Boolean(js_State *J)
{
 js_newboolean(J, js_toboolean(J, 1));
}
