
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_getproperty (int *,int,char*) ;
 int js_pop (int *,int) ;
 int js_tointeger (int *,int) ;

int js_getlength(js_State *J, int idx)
{
 int len;
 js_getproperty(J, idx, "length");
 len = js_tointeger(J, -1);
 js_pop(J, 1);
 return len;
}
