
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_isstring (int *,int) ;
 int stdout ;
 int utf8_fprintf (int ,char*,char const*) ;

__attribute__((used)) static int vlclua_console_write( lua_State *L )
{
    if( !lua_isstring( L, 1 ) )
        return luaL_error( L, "win.console_write usage: (text)" );
    const char* psz_line = luaL_checkstring( L, 1 );
    utf8_fprintf( stdout, "%s", psz_line );
    return 0;
}
