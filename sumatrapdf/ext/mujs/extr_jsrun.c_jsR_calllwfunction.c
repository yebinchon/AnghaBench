
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_Value ;
typedef int js_State ;
struct TYPE_4__ {int numparams; int varlen; } ;
typedef TYPE_1__ js_Function ;
typedef int js_Environment ;


 scalar_t__ BOT ;
 scalar_t__ TOP ;
 int jsR_restorescope (int *) ;
 int jsR_run (int *,TYPE_1__*) ;
 int jsR_savescope (int *,int *) ;
 int js_pop (int *,int) ;
 int js_pushundefined (int *) ;
 int js_pushvalue (int *,int ) ;
 int * stackidx (int *,int) ;

__attribute__((used)) static void jsR_calllwfunction(js_State *J, int n, js_Function *F, js_Environment *scope)
{
 js_Value v;
 int i;

 jsR_savescope(J, scope);

 if (n > F->numparams) {
  js_pop(J, n - F->numparams);
  n = F->numparams;
 }

 for (i = n; i < F->varlen; ++i)
  js_pushundefined(J);

 jsR_run(J, F);
 v = *stackidx(J, -1);
 TOP = --BOT;
 js_pushvalue(J, v);

 jsR_restorescope(J);
}
