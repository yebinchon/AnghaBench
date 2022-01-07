
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
struct TYPE_9__ {int * async_iface; TYPE_2__* disp_inherit; int inherit; int * stmts; int * disp_methods; int * disp_props; } ;


 int TRUE ;
 int compute_method_indexes (TYPE_2__*) ;
 int error_loc (char*) ;
 int find_type (char*,int *,int ) ;
 TYPE_3__* xmalloc (int) ;

void type_dispinterface_define_from_iface(type_t *dispiface, type_t *iface)
{
    dispiface->details.iface = xmalloc(sizeof(*dispiface->details.iface));
    dispiface->details.iface->disp_props = ((void*)0);
    dispiface->details.iface->disp_methods = ((void*)0);
    dispiface->details.iface->stmts = ((void*)0);
    dispiface->details.iface->inherit = find_type("IDispatch", ((void*)0), 0);
    if (!dispiface->details.iface->inherit) error_loc("IDispatch is undefined\n");
    dispiface->details.iface->disp_inherit = iface;
    dispiface->details.iface->async_iface = ((void*)0);
    dispiface->defined = TRUE;
    compute_method_indexes(dispiface);
}
