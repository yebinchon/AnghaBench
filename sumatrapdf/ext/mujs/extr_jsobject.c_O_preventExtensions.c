
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_2__ {scalar_t__ extensible; } ;


 int js_copy (int *,int) ;
 int js_isobject (int *,int) ;
 TYPE_1__* js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void O_preventExtensions(js_State *J)
{
 if (!js_isobject(J, 1))
  js_typeerror(J, "not an object");
 js_toobject(J, 1)->extensible = 0;
 js_copy(J, 1);
}
