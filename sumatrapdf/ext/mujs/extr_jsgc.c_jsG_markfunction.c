
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {int gcmark; int funlen; struct TYPE_3__** funtab; } ;
typedef TYPE_1__ js_Function ;



__attribute__((used)) static void jsG_markfunction(js_State *J, int mark, js_Function *fun)
{
 int i;
 fun->gcmark = mark;
 for (i = 0; i < fun->funlen; ++i)
  if (fun->funtab[i]->gcmark != mark)
   jsG_markfunction(J, mark, fun->funtab[i]);
}
