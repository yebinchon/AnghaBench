
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_2__ {int extensible; } ;


 int js_isobject (int *,int) ;
 int js_pushboolean (int *,int ) ;
 TYPE_1__* js_toobject (int *,int) ;
 int js_typeerror (int *,char*) ;

__attribute__((used)) static void O_isExtensible(js_State *J)
{
 if (!js_isobject(J, 1))
  js_typeerror(J, "not an object");
 js_pushboolean(J, js_toobject(J, 1)->extensible);
}
