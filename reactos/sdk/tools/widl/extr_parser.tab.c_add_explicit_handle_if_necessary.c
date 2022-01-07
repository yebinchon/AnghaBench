
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int attrs; } ;
typedef TYPE_1__ var_t ;
typedef int type_t ;


 int ATTR_IN ;
 int append_attr (int *,int ) ;
 int find_type_or_error (char*,int ) ;
 int get_func_handle_var (int const*,TYPE_1__*,unsigned char*,unsigned char*) ;
 int make_attr (int ) ;
 TYPE_1__* make_var (int ) ;
 int type_function_add_head_arg (int ,TYPE_1__*) ;
 int xstrdup (char*) ;

__attribute__((used)) static void add_explicit_handle_if_necessary(const type_t *iface, var_t *func)
{
    unsigned char explicit_fc, implicit_fc;


    if (!get_func_handle_var( iface, func, &explicit_fc, &implicit_fc ) || !explicit_fc)
    {



        var_t *idl_handle = make_var(xstrdup("IDL_handle"));
        idl_handle->attrs = append_attr(((void*)0), make_attr(ATTR_IN));
        idl_handle->type = find_type_or_error("handle_t", 0);
        type_function_add_head_arg(func->type, idl_handle);
    }
}
