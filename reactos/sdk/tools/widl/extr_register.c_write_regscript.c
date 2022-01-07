
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int statement_list_t ;
typedef int FILE ;


 int add_output_to_resources (char*,int ) ;
 scalar_t__ do_everything ;
 int do_regscript ;
 int error (char*,int ) ;
 scalar_t__ fclose (int *) ;
 int * find_ps_factory (int const*) ;
 int flush_output_resources (int ) ;
 int * fopen (int ,char*) ;
 scalar_t__ fwrite (int ,int,scalar_t__,int *) ;
 int indent ;
 int init_output_buffer () ;
 int need_proxy_file (int const*) ;
 int output_buffer ;
 scalar_t__ output_buffer_pos ;
 int put_str (int ,char*) ;
 int regscript_name ;
 int regscript_token ;
 scalar_t__ strendswith (int ,char*) ;
 int write_coclasses (int const*,int *) ;
 int write_interfaces (int const*,int const*) ;
 int write_progids (int const*) ;

void write_regscript( const statement_list_t *stmts )
{
    const type_t *ps_factory;

    if (!do_regscript) return;
    if (do_everything && !need_proxy_file( stmts )) return;

    init_output_buffer();

    put_str( indent, "HKCR\n" );
    put_str( indent++, "{\n" );

    put_str( indent, "NoRemove Interface\n" );
    put_str( indent++, "{\n" );
    ps_factory = find_ps_factory( stmts );
    if (ps_factory) write_interfaces( stmts, ps_factory );
    put_str( --indent, "}\n" );

    put_str( indent, "NoRemove CLSID\n" );
    put_str( indent++, "{\n" );
    write_coclasses( stmts, ((void*)0) );
    put_str( --indent, "}\n" );

    write_progids( stmts );
    put_str( --indent, "}\n" );

    if (strendswith( regscript_name, ".res" ))
    {
        add_output_to_resources( "WINE_REGISTRY", regscript_token );
        flush_output_resources( regscript_name );
    }
    else
    {
        FILE *f = fopen( regscript_name, "w" );
        if (!f) error( "Could not open %s for output\n", regscript_name );
        if (fwrite( output_buffer, 1, output_buffer_pos, f ) != output_buffer_pos)
            error( "Failed to write to %s\n", regscript_name );
        if (fclose( f ))
            error( "Failed to write to %s\n", regscript_name );
    }
}
