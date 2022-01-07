
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* module; } ;
struct TYPE_6__ {int defined; TYPE_1__ details; } ;
typedef TYPE_2__ type_t ;
typedef int statement_list_t ;
struct TYPE_7__ {int * stmts; } ;


 int TRUE ;
 int error_loc (char*) ;
 TYPE_3__* xmalloc (int) ;

void type_module_define(type_t *module, statement_list_t *stmts)
{
    if (module->details.module) error_loc("multiple definition error\n");
    module->details.module = xmalloc(sizeof(*module->details.module));
    module->details.module->stmts = stmts;
    module->defined = TRUE;
}
