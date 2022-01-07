
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jsV_numbertoint32 (int ) ;
 int jsV_tonumber (int *,int ) ;
 int stackidx (int *,int) ;

int js_toint32(js_State *J, int idx)
{
 return jsV_numbertoint32(jsV_tonumber(J, stackidx(J, idx)));
}
