
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 unsigned short jsV_numbertouint16 (int ) ;
 int jsV_tonumber (int *,int ) ;
 int stackidx (int *,int) ;

unsigned short js_touint16(js_State *J, int idx)
{
 return jsV_numbertouint16(jsV_tonumber(J, stackidx(J, idx)));
}
