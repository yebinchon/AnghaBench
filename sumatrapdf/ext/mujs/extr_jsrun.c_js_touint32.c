
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 unsigned int jsV_numbertouint32 (int ) ;
 int jsV_tonumber (int *,int ) ;
 int stackidx (int *,int) ;

unsigned int js_touint32(js_State *J, int idx)
{
 return jsV_numbertouint32(jsV_tonumber(J, stackidx(J, idx)));
}
