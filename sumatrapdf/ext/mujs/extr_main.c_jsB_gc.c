
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_gc (int *,int) ;
 int js_pushundefined (int *) ;
 int js_toboolean (int *,int) ;

__attribute__((used)) static void jsB_gc(js_State *J)
{
 int report = js_toboolean(J, 1);
 js_gc(J, report);
 js_pushundefined(J);
}
