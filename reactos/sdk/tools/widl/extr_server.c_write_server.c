
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int statement_list_t ;


 scalar_t__ do_everything ;
 int do_server ;
 int fclose (int ) ;
 int init_server () ;
 int need_stub_files (int const*) ;
 int server ;
 int write_server_routines (int const*) ;

void write_server(const statement_list_t *stmts)
{
    if (!do_server)
        return;
    if (do_everything && !need_stub_files(stmts))
        return;

    init_server();
    if (!server)
        return;

    write_server_routines( stmts );
    fclose(server);
}
