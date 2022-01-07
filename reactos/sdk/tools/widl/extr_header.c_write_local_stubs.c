
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int statement_list_t ;
typedef int FILE ;


 int error (char*,int ) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,...) ;
 char* header_name ;
 char* input_name ;
 int local_stubs_name ;
 int write_local_stubs_stmts (int *,int const*) ;

void write_local_stubs(const statement_list_t *stmts)
{
  FILE *local_stubs;

  if (!local_stubs_name) return;

  local_stubs = fopen(local_stubs_name, "w");
  if (!local_stubs) {
    error("Could not open %s for output\n", local_stubs_name);
    return;
  }
  fprintf(local_stubs, "/* call_as/local stubs for %s */\n\n", input_name);
  fprintf(local_stubs, "#include <objbase.h>\n");
  fprintf(local_stubs, "#include \"%s\"\n\n", header_name);

  write_local_stubs_stmts(local_stubs, stmts);

  fclose(local_stubs);
}
