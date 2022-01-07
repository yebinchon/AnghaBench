
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 char const* jsV_nextiterator (int *,int ) ;
 int js_toobject (int *,int) ;

const char *js_nextiterator(js_State *J, int idx)
{
 return jsV_nextiterator(J, js_toobject(J, idx));
}
