
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsV_numbertointeger (int ) ;
 int jsV_tonumber (int *,int ) ;
 int stackidx (int *,int) ;

int js_tointeger(js_State *J, int idx)
{
 return jsV_numbertointeger(jsV_tonumber(J, stackidx(J, idx)));
}
