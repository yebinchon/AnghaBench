
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static int vlclua_io_file_close( lua_State *L )
{
    FILE **pp_file = (FILE**)luaL_checkudata( L, 1, "io_file" );
    if ( *pp_file )
    {
        fclose( *pp_file );
        *pp_file = ((void*)0);
    }
    return 0;
}
