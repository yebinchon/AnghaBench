
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int gccounter; TYPE_2__* gcenv; } ;
typedef TYPE_1__ js_State ;
typedef int js_Object ;
struct TYPE_9__ {int * variables; struct TYPE_9__* outer; struct TYPE_9__* gcnext; scalar_t__ gcmark; } ;
typedef TYPE_2__ js_Environment ;


 TYPE_2__* js_malloc (TYPE_1__*,int) ;

js_Environment *jsR_newenvironment(js_State *J, js_Object *vars, js_Environment *outer)
{
 js_Environment *E = js_malloc(J, sizeof *E);
 E->gcmark = 0;
 E->gcnext = J->gcenv;
 J->gcenv = E;
 ++J->gccounter;

 E->outer = outer;
 E->variables = vars;
 return E;
}
