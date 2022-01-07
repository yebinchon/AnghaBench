
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int js_Value ;
struct TYPE_22__ {int strict; } ;
typedef TYPE_1__ js_State ;
struct TYPE_23__ {int numparams; char** vartab; int varlen; scalar_t__ arguments; } ;
typedef TYPE_2__ js_Function ;
typedef int js_Environment ;


 scalar_t__ BOT ;
 int JS_COBJECT ;
 int JS_DONTENUM ;
 scalar_t__ TOP ;
 int * jsR_newenvironment (TYPE_1__*,int ,int *) ;
 int jsR_restorescope (TYPE_1__*) ;
 int jsR_run (TYPE_1__*,TYPE_2__*) ;
 int jsR_savescope (TYPE_1__*,int *) ;
 int jsV_newobject (TYPE_1__*,int ,int *) ;
 int js_copy (TYPE_1__*,int) ;
 int js_currentfunction (TYPE_1__*) ;
 int js_defproperty (TYPE_1__*,int,char*,int ) ;
 int js_initvar (TYPE_1__*,char*,int) ;
 int js_newarguments (TYPE_1__*) ;
 int js_pop (TYPE_1__*,int) ;
 int js_pushnumber (TYPE_1__*,int) ;
 int js_pushundefined (TYPE_1__*) ;
 int js_pushvalue (TYPE_1__*,int ) ;
 int js_setindex (TYPE_1__*,int,int) ;
 int * stackidx (TYPE_1__*,int) ;

__attribute__((used)) static void jsR_callfunction(js_State *J, int n, js_Function *F, js_Environment *scope)
{
 js_Value v;
 int i;

 scope = jsR_newenvironment(J, jsV_newobject(J, JS_COBJECT, ((void*)0)), scope);

 jsR_savescope(J, scope);

 if (F->arguments) {
  js_newarguments(J);
  if (!J->strict) {
   js_currentfunction(J);
   js_defproperty(J, -2, "callee", JS_DONTENUM);
  }
  js_pushnumber(J, n);
  js_defproperty(J, -2, "length", JS_DONTENUM);
  for (i = 0; i < n; ++i) {
   js_copy(J, i + 1);
   js_setindex(J, -2, i);
  }
  js_initvar(J, "arguments", -1);
  js_pop(J, 1);
 }

 for (i = 0; i < n && i < F->numparams; ++i)
  js_initvar(J, F->vartab[i], i + 1);
 js_pop(J, n);

 for (; i < F->varlen; ++i) {
  js_pushundefined(J);
  js_initvar(J, F->vartab[i], -1);
  js_pop(J, 1);
 }

 jsR_run(J, F);
 v = *stackidx(J, -1);
 TOP = --BOT;
 js_pushvalue(J, v);

 jsR_restorescope(J);
}
