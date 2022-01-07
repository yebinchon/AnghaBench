
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {struct TYPE_4__* code; struct TYPE_4__* vartab; struct TYPE_4__* strtab; struct TYPE_4__* numtab; struct TYPE_4__* funtab; } ;
typedef TYPE_1__ js_Function ;


 int js_free (int *,TYPE_1__*) ;

__attribute__((used)) static void jsG_freefunction(js_State *J, js_Function *fun)
{
 js_free(J, fun->funtab);
 js_free(J, fun->numtab);
 js_free(J, fun->strtab);
 js_free(J, fun->vartab);
 js_free(J, fun->code);
 js_free(J, fun);
}
