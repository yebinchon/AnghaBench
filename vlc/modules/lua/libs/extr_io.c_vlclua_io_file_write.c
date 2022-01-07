
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 char* LUA_NUMBER_FMT ;
 scalar_t__ LUA_TNUMBER ;
 scalar_t__ fprintf (int *,char*,int ) ;
 scalar_t__ fwrite (char const*,int,size_t,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_tonumber (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int vlclua_io_file_write( lua_State *L )
{
    FILE **pp_file = (FILE**)luaL_checkudata( L, 1, "io_file" );
    if ( !*pp_file )
        return luaL_error( L, "Attempt to use a closed file" );
    int i_nb_args = lua_gettop( L );
    bool b_success = 1;
    for ( int i = 2; i <= i_nb_args; ++i )
    {
        bool i_res;
        if ( lua_type( L, i ) == LUA_TNUMBER )
            i_res = fprintf(*pp_file, LUA_NUMBER_FMT, lua_tonumber( L, i ) ) > 0;
        else
        {
            size_t i_len;
            const char* psz_value = luaL_checklstring( L, i, &i_len );
            i_res = fwrite(psz_value, sizeof(*psz_value), i_len, *pp_file ) > 0;
        }
        b_success = b_success && i_res;
    }
    lua_pushboolean( L, b_success );
    return 1;
}
