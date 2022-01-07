
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_t ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int print_file (int *,int,char*,char*) ;

void write_full_pointer_init(FILE *file, int indent, const var_t *func, int is_server)
{
    print_file(file, indent, "__frame->_StubMsg.FullPtrXlatTables = NdrFullPointerXlatInit(0,%s);\n",
                   is_server ? "XLAT_SERVER" : "XLAT_CLIENT");
    fprintf(file, "\n");
}
