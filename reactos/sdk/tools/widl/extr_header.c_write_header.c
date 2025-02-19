
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int statement_list_t ;
typedef int FILE ;


 int FALSE ;
 char* PACKAGE_VERSION ;
 int do_header ;
 int end_cplusplus_guard (int *) ;
 int error (char*,int ) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int for_each_serializable (int const*,int *,int ) ;
 int fprintf (int *,char*,...) ;
 int header_name ;
 char* header_token ;
 char* input_name ;
 int serializable_exists ;
 int start_cplusplus_guard (int *) ;
 int write_context_handle_rundowns (int *) ;
 int write_forward_decls (int *,int const*) ;
 int write_generic_handle_routines (int *) ;
 int write_header_stmts (int *,int const*,int *,int ) ;
 int write_imports (int *,int const*) ;
 int write_serialize_function_decl ;
 int write_user_types (int *) ;

void write_header(const statement_list_t *stmts)
{
  FILE *header;

  if (!do_header) return;

  if(!(header = fopen(header_name, "w"))) {
    error("Could not open %s for output\n", header_name);
    return;
  }
  fprintf(header, "/*** Autogenerated by WIDL %s from %s - Do not edit ***/\n\n", PACKAGE_VERSION, input_name);

  fprintf(header, "#ifdef _WIN32\n");
  fprintf(header, "#ifndef __REQUIRED_RPCNDR_H_VERSION__\n");
  fprintf(header, "#define __REQUIRED_RPCNDR_H_VERSION__ 475\n");
  fprintf(header, "#endif\n\n");

  fprintf(header, "#ifdef __REACTOS__\n");
  fprintf(header, "#define WIN32_LEAN_AND_MEAN\n");
  fprintf(header, "#endif\n\n");

  fprintf(header, "#include <rpc.h>\n" );
  fprintf(header, "#include <rpcndr.h>\n" );
  if (!for_each_serializable(stmts, ((void*)0), serializable_exists))
    fprintf(header, "#include <midles.h>\n" );
  fprintf(header, "#endif\n\n");

  fprintf(header, "#ifndef COM_NO_WINDOWS_H\n");
  fprintf(header, "#include <windows.h>\n");
  fprintf(header, "#include <ole2.h>\n");
  fprintf(header, "#endif\n\n");

  fprintf(header, "#ifndef __%s__\n", header_token);
  fprintf(header, "#define __%s__\n\n", header_token);

  fprintf(header, "/* Forward declarations */\n\n");
  write_forward_decls(header, stmts);

  fprintf(header, "/* Headers for imported files */\n\n");
  write_imports(header, stmts);
  fprintf(header, "\n");
  start_cplusplus_guard(header);

  write_header_stmts(header, stmts, ((void*)0), FALSE);

  fprintf(header, "/* Begin additional prototypes for all interfaces */\n");
  fprintf(header, "\n");
  for_each_serializable(stmts, header, write_serialize_function_decl);
  write_user_types(header);
  write_generic_handle_routines(header);
  write_context_handle_rundowns(header);
  fprintf(header, "\n");
  fprintf(header, "/* End additional prototypes */\n");
  fprintf(header, "\n");

  end_cplusplus_guard(header);
  fprintf(header, "#endif /* __%s__ */\n", header_token);

  fclose(header);
}
