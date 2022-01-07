
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int statement_list_t ;


 int client ;
 int do_client ;
 scalar_t__ do_everything ;
 int fclose (int ) ;
 int init_client () ;
 int need_stub_files (int const*) ;
 int write_client_routines (int const*) ;

void write_client(const statement_list_t *stmts)
{
    if (!do_client)
        return;
    if (do_everything && !need_stub_files(stmts))
        return;

    init_client();
    if (!client)
        return;

    write_client_routines( stmts );
    fclose(client);
}
