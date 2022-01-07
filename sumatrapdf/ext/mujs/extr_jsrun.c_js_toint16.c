
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 short jsV_numbertoint16 (int ) ;
 int jsV_tonumber (int *,int ) ;
 int stackidx (int *,int) ;

short js_toint16(js_State *J, int idx)
{
 return jsV_numbertoint16(jsV_tonumber(J, stackidx(J, idx)));
}
