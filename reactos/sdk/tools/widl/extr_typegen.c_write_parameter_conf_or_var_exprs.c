
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int attrs; int * type; } ;
typedef TYPE_1__ var_t ;
typedef int type_t ;
struct TYPE_9__ {int type; } ;
typedef TYPE_2__ expr_t ;
typedef enum remoting_phase { ____Placeholder_remoting_phase } remoting_phase ;
typedef int FILE ;


 int ATTR_IIDIS ;
 int ATTR_SWITCHIS ;
 int EXPR_VOID ;
 int TDT_IGNORE_RANGES ;
 int TDT_IGNORE_STRINGS ;
 int TYPE_UNION ;
 int fprintf (int *,char*) ;
 TYPE_2__* get_attrp (int ,int ) ;
 int is_conformance_needed_for_phase (int) ;
 int print_file (int *,int,char*) ;
 TYPE_2__* type_array_get_conformance (int const*) ;
 TYPE_2__* type_array_get_variance (int const*) ;
 int type_array_has_conformance (int const*) ;
 int type_array_has_variance (int const*) ;
 int type_get_type (int const*) ;
 int * type_pointer_get_ref (int const*) ;
 int typegen_detect_type (int const*,int ,int) ;
 int write_expr (int *,TYPE_2__*,int,int,int *,int *,char const*) ;

void write_parameter_conf_or_var_exprs(FILE *file, int indent, const char *local_var_prefix,
                                       enum remoting_phase phase, const var_t *var, int valid_variance)
{
    const type_t *type = var->type;

    for (;;)
    {
        switch (typegen_detect_type(type, var->attrs, TDT_IGNORE_STRINGS|TDT_IGNORE_RANGES))
        {
        case 140:
            if (is_conformance_needed_for_phase(phase))
            {
                if (type_array_has_conformance(type) &&
                    type_array_get_conformance(type)->type != EXPR_VOID)
                {
                    print_file(file, indent, "__frame->_StubMsg.MaxCount = (ULONG_PTR)");
                    write_expr(file, type_array_get_conformance(type), 1, 1, ((void*)0), ((void*)0), local_var_prefix);
                    fprintf(file, ";\n\n");
                }
                if (type_array_has_variance(type))
                {
                    print_file(file, indent, "__frame->_StubMsg.Offset = 0;\n");
                    if (valid_variance)
                    {
                        print_file(file, indent, "__frame->_StubMsg.ActualCount = (ULONG_PTR)");
                        write_expr(file, type_array_get_variance(type), 1, 1, ((void*)0), ((void*)0), local_var_prefix);
                        fprintf(file, ";\n\n");
                    }
                    else
                        print_file(file, indent, "__frame->_StubMsg.ActualCount = __frame->_StubMsg.MaxCount;\n\n");
                }
            }
            break;
        case 129:
            if (type_get_type(type) == TYPE_UNION &&
                is_conformance_needed_for_phase(phase))
            {
                print_file(file, indent, "__frame->_StubMsg.MaxCount = (ULONG_PTR)");
                write_expr(file, get_attrp(var->attrs, ATTR_SWITCHIS), 1, 1, ((void*)0), ((void*)0), local_var_prefix);
                fprintf(file, ";\n\n");
            }
            break;
        case 135:
        {
            expr_t *iid;

            if (is_conformance_needed_for_phase(phase) && (iid = get_attrp( var->attrs, ATTR_IIDIS )))
            {
                print_file( file, indent, "__frame->_StubMsg.MaxCount = (ULONG_PTR) " );
                write_expr( file, iid, 1, 1, ((void*)0), ((void*)0), local_var_prefix );
                fprintf( file, ";\n\n" );
            }
            break;
        }
        case 133:
            type = type_pointer_get_ref(type);
            continue;
        case 134:
        case 128:
        case 138:
        case 137:
        case 131:
        case 139:
        case 136:
        case 130:
        case 132:
            break;
        }
        break;
    }
}
