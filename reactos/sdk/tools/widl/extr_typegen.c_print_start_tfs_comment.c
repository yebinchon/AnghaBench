
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int FILE ;


 int print_file (int *,int ,char*,...) ;
 int write_type_decl (int *,int *,int *) ;

__attribute__((used)) static void print_start_tfs_comment(FILE *file, type_t *t, unsigned int tfsoff)
{
    print_file(file, 0, "/* %u (", tfsoff);
    write_type_decl(file, t, ((void*)0));
    print_file(file, 0, ") */\n");
}
