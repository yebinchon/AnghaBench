
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int js_Object ;


 int jsR_hasproperty (int *,int *,char const*) ;
 int js_pushundefined (int *) ;

__attribute__((used)) static void jsR_getproperty(js_State *J, js_Object *obj, const char *name)
{
 if (!jsR_hasproperty(J, obj, name))
  js_pushundefined(J);
}
