
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int type; } ;
typedef TYPE_1__ var_t ;
typedef enum remoting_phase { ____Placeholder_remoting_phase } remoting_phase ;
typedef int FILE ;






 int assert (int ) ;
 scalar_t__ decl_indirect (int ) ;
 int print_file (int *,int,char*,...) ;

__attribute__((used)) static void print_phase_function(FILE *file, int indent, const char *type,
                                 const char *local_var_prefix, enum remoting_phase phase,
                                 const var_t *var, unsigned int type_offset)
{
    const char *function;
    switch (phase)
    {
    case 131:
        function = "BufferSize";
        break;
    case 129:
        function = "Marshall";
        break;
    case 128:
        function = "Unmarshall";
        break;
    case 130:
        function = "Free";
        break;
    default:
        assert(0);
        return;
    }

    print_file(file, indent, "Ndr%s%s(\n", type, function);
    indent++;
    print_file(file, indent, "&__frame->_StubMsg,\n");
    print_file(file, indent, "%s%s%s%s%s,\n",
               (phase == 128) ? "(unsigned char **)" : "(unsigned char *)",
               (phase == 128 || decl_indirect(var->type)) ? "&" : "",
               local_var_prefix,
               (phase == 128 && decl_indirect(var->type)) ? "_p_" : "",
               var->name);
    print_file(file, indent, "(PFORMAT_STRING)&__MIDL_TypeFormatString.Format[%d]%s\n",
               type_offset, (phase == 128) ? "," : ");");
    if (phase == 128)
        print_file(file, indent, "0);\n");
    indent--;
}
