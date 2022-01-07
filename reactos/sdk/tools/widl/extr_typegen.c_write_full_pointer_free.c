
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_t ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int print_file (int *,int,char*) ;

void write_full_pointer_free(FILE *file, int indent, const var_t *func)
{
    print_file(file, indent, "NdrFullPointerXlatFree(__frame->_StubMsg.FullPtrXlatTables);\n");
    fprintf(file, "\n");
}
