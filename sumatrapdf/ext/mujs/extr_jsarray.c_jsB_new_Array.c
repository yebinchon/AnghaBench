
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_copy (int *,int) ;
 int js_gettop (int *) ;
 scalar_t__ js_isnumber (int *,int) ;
 int js_newarray (int *) ;
 int js_setindex (int *,int,int) ;
 int js_setproperty (int *,int,char*) ;

__attribute__((used)) static void jsB_new_Array(js_State *J)
{
 int i, top = js_gettop(J);

 js_newarray(J);

 if (top == 2) {
  if (js_isnumber(J, 1)) {
   js_copy(J, 1);
   js_setproperty(J, -2, "length");
  } else {
   js_copy(J, 1);
   js_setindex(J, -2, 0);
  }
 } else {
  for (i = 1; i < top; ++i) {
   js_copy(J, i);
   js_setindex(J, -2, i - 1);
  }
 }
}
