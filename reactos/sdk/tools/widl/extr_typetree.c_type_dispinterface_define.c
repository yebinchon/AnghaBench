
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int var_list_t ;
struct TYPE_6__ {TYPE_3__* iface; } ;
struct TYPE_7__ {int defined; TYPE_1__ details; } ;
typedef TYPE_2__ type_t ;
struct TYPE_8__ {int * async_iface; int * disp_inherit; int inherit; int * stmts; int * disp_methods; int * disp_props; } ;


 int TRUE ;
 int compute_method_indexes (TYPE_2__*) ;
 int error_loc (char*) ;
 int find_type (char*,int *,int ) ;
 TYPE_3__* xmalloc (int) ;

void type_dispinterface_define(type_t *iface, var_list_t *props, var_list_t *methods)
{
    iface->details.iface = xmalloc(sizeof(*iface->details.iface));
    iface->details.iface->disp_props = props;
    iface->details.iface->disp_methods = methods;
    iface->details.iface->stmts = ((void*)0);
    iface->details.iface->inherit = find_type("IDispatch", ((void*)0), 0);
    if (!iface->details.iface->inherit) error_loc("IDispatch is undefined\n");
    iface->details.iface->disp_inherit = ((void*)0);
    iface->details.iface->async_iface = ((void*)0);
    iface->defined = TRUE;
    compute_method_indexes(iface);
}
