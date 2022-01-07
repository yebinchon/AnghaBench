
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* E; } ;
typedef TYPE_1__ js_State ;
struct TYPE_11__ {int value; scalar_t__ getter; } ;
typedef TYPE_2__ js_Property ;
struct TYPE_12__ {struct TYPE_12__* outer; scalar_t__ variables; } ;
typedef TYPE_3__ js_Environment ;


 TYPE_2__* jsV_getproperty (TYPE_1__*,scalar_t__,char const*) ;
 int js_call (TYPE_1__*,int ) ;
 int js_pushobject (TYPE_1__*,scalar_t__) ;
 int js_pushvalue (TYPE_1__*,int ) ;

__attribute__((used)) static int js_hasvar(js_State *J, const char *name)
{
 js_Environment *E = J->E;
 do {
  js_Property *ref = jsV_getproperty(J, E->variables, name);
  if (ref) {
   if (ref->getter) {
    js_pushobject(J, ref->getter);
    js_pushobject(J, E->variables);
    js_call(J, 0);
   } else {
    js_pushvalue(J, ref->value);
   }
   return 1;
  }
  E = E->outer;
 } while (E);
 return 0;
}
