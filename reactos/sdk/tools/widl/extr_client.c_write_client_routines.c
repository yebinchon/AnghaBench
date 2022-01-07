
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int statement_list_t ;


 int client ;
 int client_token ;
 int fprintf (int ,char*) ;
 int indent ;
 scalar_t__ need_inline_stubs_file (int const*) ;
 int need_stub ;
 int print_client (char*) ;
 int write_client_ifaces (int const*,int,unsigned int*) ;
 int write_exceptions (int ) ;
 int write_expr_eval_routine_list (int ,int ) ;
 int write_expr_eval_routines (int ,int ) ;
 int write_formatstringsdecl (int ,int ,int const*,int ) ;
 int write_generic_handle_routine_list () ;
 int write_procformatstring (int ,int const*,int ) ;
 int write_typeformatstring (int ,int const*,int ) ;
 int write_user_quad_list (int ) ;

__attribute__((used)) static void write_client_routines(const statement_list_t *stmts)
{
    unsigned int proc_offset = 0;
    int expr_eval_routines;

    if (need_inline_stubs_file( stmts ))
    {
        write_exceptions( client );
        print_client( "\n");
    }

    write_formatstringsdecl(client, indent, stmts, need_stub);
    expr_eval_routines = write_expr_eval_routines(client, client_token);
    if (expr_eval_routines)
        write_expr_eval_routine_list(client, client_token);
    write_generic_handle_routine_list();
    write_user_quad_list(client);

    write_client_ifaces(stmts, expr_eval_routines, &proc_offset);

    fprintf(client, "\n");

    write_procformatstring(client, stmts, need_stub);
    write_typeformatstring(client, stmts, need_stub);
}
