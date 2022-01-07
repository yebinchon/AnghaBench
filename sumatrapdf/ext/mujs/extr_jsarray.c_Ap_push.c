
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_copy (int *,int) ;
 int js_getlength (int *,int ) ;
 int js_gettop (int *) ;
 int js_pushnumber (int *,int) ;
 int js_setindex (int *,int ,int) ;
 int js_setlength (int *,int ,int) ;

__attribute__((used)) static void Ap_push(js_State *J)
{
 int i, top = js_gettop(J);
 int n;

 n = js_getlength(J, 0);

 for (i = 1; i < top; ++i, ++n) {
  js_copy(J, i);
  js_setindex(J, 0, n);
 }

 js_setlength(J, 0, n);

 js_pushnumber(J, n);
}
