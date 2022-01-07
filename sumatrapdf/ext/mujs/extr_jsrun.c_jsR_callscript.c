
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_Value ;
typedef int js_State ;
struct TYPE_4__ {int varlen; int * vartab; } ;
typedef TYPE_1__ js_Function ;
typedef int js_Environment ;


 scalar_t__ BOT ;
 scalar_t__ TOP ;
 int jsR_restorescope (int *) ;
 int jsR_run (int *,TYPE_1__*) ;
 int jsR_savescope (int *,int *) ;
 int js_initvar (int *,int ,int) ;
 int js_pop (int *,int) ;
 int js_pushundefined (int *) ;
 int js_pushvalue (int *,int ) ;
 int * stackidx (int *,int) ;

__attribute__((used)) static void jsR_callscript(js_State *J, int n, js_Function *F, js_Environment *scope)
{
 js_Value v;
 int i;

 if (scope)
  jsR_savescope(J, scope);


 js_pop(J, n);

 for (i = 0; i < F->varlen; ++i) {
  js_pushundefined(J);
  js_initvar(J, F->vartab[i], -1);
  js_pop(J, 1);
 }

 jsR_run(J, F);
 v = *stackidx(J, -1);
 TOP = --BOT;
 js_pushvalue(J, v);

 if (scope)
  jsR_restorescope(J);
}
