
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {struct TYPE_3__* outer; int variables; } ;
typedef TYPE_1__ js_Environment ;


 int js_dumpobject (int *,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static void jsR_dumpenvironment(js_State *J, js_Environment *E, int d)
{
 printf("scope %d ", d);
 js_dumpobject(J, E->variables);
 if (E->outer)
  jsR_dumpenvironment(J, E->outer, d+1);
}
