
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {void* page; void* chapter; } ;
typedef TYPE_1__ fz_location ;


 TYPE_1__ fz_make_location (int ,void*) ;
 int js_getindex (int *,int,int) ;
 scalar_t__ js_isnumber (int *,int) ;
 int js_pop (int *,int) ;
 void* js_tryinteger (int *,int,int) ;

__attribute__((used)) static fz_location try_location(js_State *J)
{
 fz_location loc;
 if (js_isnumber(J, -1))
  loc = fz_make_location(0, js_tryinteger(J, -1, 1) - 1);
 else
 {
  js_getindex(J, -1, 0);
  loc.chapter = js_tryinteger(J, -1, 1) - 1;
  js_pop(J, 1);
  js_getindex(J, -1, 1);
  loc.page = js_tryinteger(J, -1, 1) - 1;
  js_pop(J, 1);
 }
 return loc;
}
