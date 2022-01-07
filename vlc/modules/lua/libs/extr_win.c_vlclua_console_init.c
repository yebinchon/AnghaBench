
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int AllocConsole () ;
 int freopen (char*,char*,int ) ;
 int stderr ;
 int stdin ;
 int stdout ;

__attribute__((used)) static int vlclua_console_init( lua_State *L )
{
    (void)L;


    AllocConsole();

    freopen( "CONOUT$", "w", stdout );
    freopen( "CONOUT$", "w", stderr );
    freopen( "CONIN$", "r", stdin );
    return 0;
}
