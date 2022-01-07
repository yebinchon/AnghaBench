
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* type; } ;
typedef TYPE_1__ var_t ;
struct TYPE_9__ {int name; } ;
typedef TYPE_2__ type_t ;
struct TYPE_10__ {int attrs; } ;
typedef int FILE ;


 int ATTR_CALLCONV ;
 int TRUE ;
 int fprintf (int *,char*,...) ;
 char* get_attrp (int ,int ) ;
 int get_name (TYPE_1__ const*) ;
 int type_function_get_rettype (TYPE_5__*) ;
 scalar_t__ type_get_function_args (TYPE_5__*) ;
 int write_args (int *,scalar_t__,int ,int ,int ) ;
 int write_type_decl_left (int *,int ) ;

__attribute__((used)) static void write_function_proto(FILE *header, const type_t *iface, const var_t *fun, const char *prefix)
{
  const char *callconv = get_attrp(fun->type->attrs, ATTR_CALLCONV);

  if (!callconv) callconv = "__cdecl";

  write_type_decl_left(header, type_function_get_rettype(fun->type));
  fprintf(header, " %s ", callconv);
  fprintf(header, "%s%s(\n", prefix, get_name(fun));
  if (type_get_function_args(fun->type))
    write_args(header, type_get_function_args(fun->type), iface->name, 0, TRUE);
  else
    fprintf(header, "    void");
  fprintf(header, ");\n\n");
}
