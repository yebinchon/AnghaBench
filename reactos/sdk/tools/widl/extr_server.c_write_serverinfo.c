
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ type_t ;


 int indent ;
 int print_server (char*,...) ;

__attribute__((used)) static void write_serverinfo(type_t *iface)
{
    print_server( "static const MIDL_SERVER_INFO %s_ServerInfo =\n", iface->name );
    print_server( "{\n" );
    indent++;
    print_server( "&%s_StubDesc,\n", iface->name );
    print_server( "%s_ServerRoutineTable,\n", iface->name );
    print_server( "__MIDL_ProcFormatString.Format,\n" );
    print_server( "%s_FormatStringOffsetTable,\n", iface->name );
    print_server( "0,\n" );
    print_server( "0,\n" );
    print_server( "0,\n" );
    print_server( "0\n" );
    indent--;
    print_server( "};\n\n" );
}
