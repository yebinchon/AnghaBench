
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int fflush (int *) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;

__attribute__((used)) static int vlclua_io_file_flush( lua_State *L )
{
    FILE **pp_file = (FILE**)luaL_checkudata( L, 1, "io_file" );
    if ( !*pp_file )
        return luaL_error( L, "Attempt to use a closed file" );
    fflush( *pp_file );
    return 0;
}
