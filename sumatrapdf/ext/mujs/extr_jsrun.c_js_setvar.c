
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int G; scalar_t__ strict; TYPE_3__* E; } ;
typedef TYPE_1__ js_State ;
struct TYPE_16__ {int atts; int value; scalar_t__ setter; } ;
typedef TYPE_2__ js_Property ;
struct TYPE_17__ {struct TYPE_17__* outer; scalar_t__ variables; } ;
typedef TYPE_3__ js_Environment ;


 int JS_READONLY ;
 int jsR_setproperty (TYPE_1__*,int ,char const*) ;
 TYPE_2__* jsV_getproperty (TYPE_1__*,scalar_t__,char const*) ;
 int js_call (TYPE_1__*,int) ;
 int js_copy (TYPE_1__*,int) ;
 int js_pop (TYPE_1__*,int) ;
 int js_pushobject (TYPE_1__*,scalar_t__) ;
 int js_referenceerror (TYPE_1__*,char*,char const*) ;
 int js_typeerror (TYPE_1__*,char*,char const*) ;
 int * stackidx (TYPE_1__*,int) ;

__attribute__((used)) static void js_setvar(js_State *J, const char *name)
{
 js_Environment *E = J->E;
 do {
  js_Property *ref = jsV_getproperty(J, E->variables, name);
  if (ref) {
   if (ref->setter) {
    js_pushobject(J, ref->setter);
    js_pushobject(J, E->variables);
    js_copy(J, -3);
    js_call(J, 1);
    js_pop(J, 1);
    return;
   }
   if (!(ref->atts & JS_READONLY))
    ref->value = *stackidx(J, -1);
   else if (J->strict)
    js_typeerror(J, "'%s' is read-only", name);
   return;
  }
  E = E->outer;
 } while (E);
 if (J->strict)
  js_referenceerror(J, "assignment to undeclared variable '%s'", name);
 jsR_setproperty(J, J->G, name);
}
