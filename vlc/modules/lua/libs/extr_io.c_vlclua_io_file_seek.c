
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ fseek (int *,long,int) ;
 int ftell (int *) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 long luaL_optinteger (int *,int,int ) ;
 char* luaL_optstring (int *,int,int *) ;
 int lua_pushinteger (int *,int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int vlclua_io_file_seek( lua_State *L )
{
    FILE **pp_file = (FILE**)luaL_checkudata( L, 1, "io_file" );
    if ( !*pp_file )
        return luaL_error( L, "Attempt to use a closed file" );
    const char* psz_mode = luaL_optstring( L, 2, ((void*)0) );
    if ( psz_mode != ((void*)0) )
    {
        long i_offset = luaL_optinteger( L, 3, 0 );
        int i_mode;
        if ( !strcmp( psz_mode, "set" ) )
            i_mode = SEEK_SET;
        else if ( !strcmp( psz_mode, "end" ) )
            i_mode = SEEK_END;
        else
            i_mode = SEEK_CUR;
        if( fseek( *pp_file, i_offset, i_mode ) != 0 )
            return luaL_error( L, "Failed to seek" );
    }
    lua_pushinteger( L, ftell( *pp_file ) );
    return 1;
}
