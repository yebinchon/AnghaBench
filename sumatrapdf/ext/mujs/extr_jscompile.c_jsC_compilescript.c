
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
typedef int js_Function ;
struct TYPE_4__ {int line; } ;
typedef TYPE_1__ js_Ast ;


 int * newfun (int *,int ,int *,int *,TYPE_1__*,int,int) ;

js_Function *jsC_compilescript(js_State *J, js_Ast *prog, int default_strict)
{
 return newfun(J, prog ? prog->line : 0, ((void*)0), ((void*)0), prog, 1, default_strict);
}
