
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* iface; } ;
struct TYPE_8__ {int defined; TYPE_1__ details; } ;
typedef TYPE_2__ type_t ;
typedef int statement_list_t ;
struct TYPE_9__ {int * async_iface; int * disp_inherit; TYPE_2__* inherit; int * stmts; int * disp_methods; int * disp_props; } ;


 int TRUE ;
 int compute_method_indexes (TYPE_2__*) ;
 TYPE_3__* xmalloc (int) ;

void type_interface_define(type_t *iface, type_t *inherit, statement_list_t *stmts)
{
    iface->details.iface = xmalloc(sizeof(*iface->details.iface));
    iface->details.iface->disp_props = ((void*)0);
    iface->details.iface->disp_methods = ((void*)0);
    iface->details.iface->stmts = stmts;
    iface->details.iface->inherit = inherit;
    iface->details.iface->disp_inherit = ((void*)0);
    iface->details.iface->async_iface = ((void*)0);
    iface->defined = TRUE;
    compute_method_indexes(iface);
}
