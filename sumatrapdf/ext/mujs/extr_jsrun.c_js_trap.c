
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_17__ {int E; } ;
typedef TYPE_5__ js_State ;
typedef int js_Function ;
struct TYPE_16__ {TYPE_3__* object; } ;
struct TYPE_13__ {int * function; } ;
struct TYPE_14__ {TYPE_1__ f; } ;
struct TYPE_15__ {TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_4__ u; } ;


 int BOT ;
 TYPE_11__* STACK ;
 int jsC_dumpfunction (TYPE_5__*,int *) ;
 int jsR_dumpenvironment (TYPE_5__*,int ,int ) ;
 int jsR_dumpstack (TYPE_5__*) ;
 int js_stacktrace (TYPE_5__*) ;
 int printf (char*,int) ;

void js_trap(js_State *J, int pc)
{
 if (pc > 0) {
  js_Function *F = STACK[BOT-1].u.object->u.f.function;
  printf("trap at %d in function ", pc);
  jsC_dumpfunction(J, F);
 }
 jsR_dumpstack(J);
 jsR_dumpenvironment(J, J->E, 0);
 js_stacktrace(J);
}
