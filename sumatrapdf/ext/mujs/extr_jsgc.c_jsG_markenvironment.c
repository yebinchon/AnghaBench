
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_4__ {int gcmark; struct TYPE_4__* outer; TYPE_2__* variables; } ;
typedef TYPE_1__ js_Environment ;
struct TYPE_5__ {int gcmark; } ;


 int jsG_markobject (int *,int,TYPE_2__*) ;

__attribute__((used)) static void jsG_markenvironment(js_State *J, int mark, js_Environment *env)
{
 do {
  env->gcmark = mark;
  if (env->variables->gcmark != mark)
   jsG_markobject(J, mark, env->variables);
  env = env->outer;
 } while (env && env->gcmark != mark);
}
