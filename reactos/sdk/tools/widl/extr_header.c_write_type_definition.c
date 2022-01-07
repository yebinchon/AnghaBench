
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int written; scalar_t__ namespace; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 int FALSE ;
 int NAME_C ;
 int NAME_DEFAULT ;
 int fprintf (int *,char*) ;
 int indent (int *,int ) ;
 int is_global_namespace (scalar_t__) ;
 int write_namespace_end (int *,scalar_t__) ;
 int write_namespace_start (int *,scalar_t__) ;
 int write_type_left (int *,TYPE_1__*,int ,int ) ;

__attribute__((used)) static void write_type_definition(FILE *f, type_t *t)
{
    int in_namespace = t->namespace && !is_global_namespace(t->namespace);
    int save_written = t->written;

    if(in_namespace) {
        fprintf(f, "#ifdef __cplusplus\n");
        fprintf(f, "} /* extern \"C\" */\n");
        write_namespace_start(f, t->namespace);
    }
    indent(f, 0);
    write_type_left(f, t, NAME_DEFAULT, FALSE);
    fprintf(f, ";\n");
    if(in_namespace) {
        t->written = save_written;
        write_namespace_end(f, t->namespace);
        fprintf(f, "extern \"C\" {\n");
        fprintf(f, "#else\n");
        write_type_left(f, t, NAME_C, FALSE);
        fprintf(f, ";\n");
        fprintf(f, "#endif\n\n");
    }
}
