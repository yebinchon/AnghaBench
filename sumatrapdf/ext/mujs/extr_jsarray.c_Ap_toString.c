
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int Ap_join (int *) ;
 int js_gettop (int *) ;
 int js_pop (int *,int) ;

__attribute__((used)) static void Ap_toString(js_State *J)
{
 int top = js_gettop(J);
 js_pop(J, top - 1);
 Ap_join(J);
}
