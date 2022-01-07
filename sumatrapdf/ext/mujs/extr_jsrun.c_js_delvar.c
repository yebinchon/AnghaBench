
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int G; scalar_t__ strict; TYPE_3__* E; } ;
typedef TYPE_1__ js_State ;
struct TYPE_11__ {int atts; } ;
typedef TYPE_2__ js_Property ;
struct TYPE_12__ {struct TYPE_12__* outer; int variables; } ;
typedef TYPE_3__ js_Environment ;


 int JS_DONTCONF ;
 int jsR_delproperty (TYPE_1__*,int ,char const*) ;
 int jsV_delproperty (TYPE_1__*,int ,char const*) ;
 TYPE_2__* jsV_getownproperty (TYPE_1__*,int ,char const*) ;
 int js_typeerror (TYPE_1__*,char*,char const*) ;

__attribute__((used)) static int js_delvar(js_State *J, const char *name)
{
 js_Environment *E = J->E;
 do {
  js_Property *ref = jsV_getownproperty(J, E->variables, name);
  if (ref) {
   if (ref->atts & JS_DONTCONF) {
    if (J->strict)
     js_typeerror(J, "'%s' is non-configurable", name);
    return 0;
   }
   jsV_delproperty(J, E->variables, name);
   return 1;
  }
  E = E->outer;
 } while (E);
 return jsR_delproperty(J, J->G, name);
}
