
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_6__* type; } ;
typedef TYPE_1__ var_t ;
typedef int var_list_t ;
struct TYPE_11__ {int name; } ;
typedef TYPE_2__ type_t ;
struct TYPE_12__ {int attrs; } ;


 int ATTR_CALLCONV ;
 int TRUE ;
 int client ;
 int fprintf (int ,char*,...) ;
 char* get_attrp (int ,int ) ;
 int get_name (TYPE_1__ const*) ;
 int indent ;
 char* prefix_client ;
 int print_client (char*) ;
 TYPE_2__* type_function_get_rettype (TYPE_6__*) ;
 int * type_get_function_args (TYPE_6__*) ;
 int write_args (int ,int const*,int ,int ,int ) ;
 int write_type_decl_left (int ,TYPE_2__*) ;

__attribute__((used)) static void write_client_func_decl( const type_t *iface, const var_t *func )
{
    const char *callconv = get_attrp(func->type->attrs, ATTR_CALLCONV);
    const var_list_t *args = type_get_function_args(func->type);
    type_t *rettype = type_function_get_rettype(func->type);

    if (!callconv) callconv = "__cdecl";
    write_type_decl_left(client, rettype);
    fprintf(client, " %s ", callconv);
    fprintf(client, "%s%s(\n", prefix_client, get_name(func));
    indent++;
    if (args)
        write_args(client, args, iface->name, 0, TRUE);
    else
        print_client("void");
    fprintf(client, ")\n");
    indent--;
}
