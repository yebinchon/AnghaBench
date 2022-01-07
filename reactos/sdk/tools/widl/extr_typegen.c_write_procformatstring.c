
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_pred_t ;
typedef int statement_list_t ;
typedef int FILE ;


 int for_each_iface (int const*,int ,int ,int *,int,unsigned int*) ;
 int print_file (int *,int,char*) ;
 int write_iface_procformatstring ;

void write_procformatstring(FILE *file, const statement_list_t *stmts, type_pred_t pred)
{
    int indent = 0;
    unsigned int offset = 0;

    print_file(file, indent, "static const MIDL_PROC_FORMAT_STRING __MIDL_ProcFormatString =\n");
    print_file(file, indent, "{\n");
    indent++;
    print_file(file, indent, "0,\n");
    print_file(file, indent, "{\n");
    indent++;

    for_each_iface(stmts, write_iface_procformatstring, pred, file, indent, &offset);

    print_file(file, indent, "0x0\n");
    indent--;
    print_file(file, indent, "}\n");
    indent--;
    print_file(file, indent, "};\n");
    print_file(file, indent, "\n");
}
