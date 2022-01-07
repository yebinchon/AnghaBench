
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ envtop; int * E; int ** envstack; } ;
typedef TYPE_1__ js_State ;
typedef int js_Environment ;


 scalar_t__ JS_ENVLIMIT ;
 int js_stackoverflow (TYPE_1__*) ;

__attribute__((used)) static void jsR_savescope(js_State *J, js_Environment *newE)
{
 if (J->envtop + 1 >= JS_ENVLIMIT)
  js_stackoverflow(J);
 J->envstack[J->envtop++] = J->E;
 J->E = newE;
}
