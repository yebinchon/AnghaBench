
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_pred_t ;
typedef int statement_list_t ;
typedef int FILE ;


 int TRUE ;
 int print_file (int *,int,char*) ;
 int process_tfs (int *,int const*,int ) ;
 int set_all_tfswrite (int ) ;

void write_typeformatstring(FILE *file, const statement_list_t *stmts, type_pred_t pred)
{
    int indent = 0;

    print_file(file, indent, "static const MIDL_TYPE_FORMAT_STRING __MIDL_TypeFormatString =\n");
    print_file(file, indent, "{\n");
    indent++;
    print_file(file, indent, "0,\n");
    print_file(file, indent, "{\n");
    indent++;
    print_file(file, indent, "NdrFcShort(0x0),\n");

    set_all_tfswrite(TRUE);
    process_tfs(file, stmts, pred);

    print_file(file, indent, "0x0\n");
    indent--;
    print_file(file, indent, "}\n");
    indent--;
    print_file(file, indent, "};\n");
    print_file(file, indent, "\n");
}
