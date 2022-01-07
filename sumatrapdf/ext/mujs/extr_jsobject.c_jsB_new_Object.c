
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 scalar_t__ js_isnull (int *,int) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_newobject (int *) ;
 int js_pushobject (int *,int ) ;
 int js_toobject (int *,int) ;

__attribute__((used)) static void jsB_new_Object(js_State *J)
{
 if (js_isundefined(J, 1) || js_isnull(J, 1))
  js_newobject(J);
 else
  js_pushobject(J, js_toobject(J, 1));
}
