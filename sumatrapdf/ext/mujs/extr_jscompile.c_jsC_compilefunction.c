
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int default_strict; } ;
typedef TYPE_1__ js_State ;
typedef int js_Function ;
struct TYPE_7__ {int c; int b; int a; int line; } ;
typedef TYPE_2__ js_Ast ;


 int * newfun (TYPE_1__*,int ,int ,int ,int ,int ,int ) ;

js_Function *jsC_compilefunction(js_State *J, js_Ast *prog)
{
 return newfun(J, prog->line, prog->a, prog->b, prog->c, 0, J->default_strict);
}
