
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {scalar_t__ chapter; scalar_t__ page; } ;
typedef TYPE_1__ fz_location ;


 int js_newarray (int *) ;
 int js_pushnumber (int *,scalar_t__) ;
 int js_setindex (int *,int,int) ;

__attribute__((used)) static void push_location(js_State *J, fz_location loc)
{
 if (loc.chapter == 0)
  js_pushnumber(J, loc.page+1);
 else
 {
  js_newarray(J);
  js_pushnumber(J, loc.chapter+1);
  js_setindex(J, -2, 0);
  js_pushnumber(J, loc.page+1);
  js_setindex(J, -2, 1);
 }
}
