
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Object ;


 int * jsV_toobject (int *,int ) ;
 int stackidx (int *,int) ;

js_Object *js_toobject(js_State *J, int idx)
{
 return jsV_toobject(J, stackidx(J, idx));
}
