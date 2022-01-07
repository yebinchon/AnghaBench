
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 scalar_t__ LUA_TNUMBER ;
 size_t SIZE_MAX ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*,...) ;
 char* luaL_optstring (int *,int,char*) ;
 scalar_t__ lua_tointeger (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int vlclua_io_file_read_chars (int *,size_t,int *) ;
 int vlclua_io_file_read_line (int *,int *) ;
 int vlclua_io_file_read_number (int *,int *) ;

__attribute__((used)) static int vlclua_io_file_read( lua_State *L )
{
    FILE **pp_file = (FILE**)luaL_checkudata( L, 1, "io_file" );
    if ( !*pp_file )
        return luaL_error( L, "Attempt to use a closed file" );
    if( lua_type( L, 2 ) == LUA_TNUMBER )
    {
        return vlclua_io_file_read_chars( L, (size_t)lua_tointeger( L, 2 ),
                                          *pp_file );
    }
    const char* psz_mode = luaL_optstring( L, 2, "*l" );
    if ( *psz_mode != '*' )
        return luaL_error( L, "Invalid file:read() format: %s", psz_mode );
    switch ( psz_mode[1] )
    {
        case 'l':
            return vlclua_io_file_read_line( L, *pp_file );
        case 'n':
            return vlclua_io_file_read_number( L, *pp_file );
        case 'a':
            return vlclua_io_file_read_chars( L, SIZE_MAX, *pp_file );
        default:
            break;
    }
    return luaL_error( L, "Invalid file:read() format: %s", psz_mode );
}
