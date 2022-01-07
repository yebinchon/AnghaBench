
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;






 int config_GetFloat (char const*) ;
 int config_GetInt (char const*) ;
 char* config_GetPsz (char const*) ;
 int config_GetType (char const*) ;
 int free (char*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,char*) ;
 int vlclua_error (int *) ;

__attribute__((used)) static int vlclua_config_get( lua_State *L )
{
    const char *psz_name = luaL_checkstring( L, 1 );
    switch( config_GetType( psz_name ) )
    {
        case 128:
        {
            char *psz = config_GetPsz( psz_name );
            lua_pushstring( L, psz );
            free( psz );
            break;
        }

        case 129:
            lua_pushinteger( L, config_GetInt( psz_name ) );
            break;

        case 131:
            lua_pushboolean( L, config_GetInt( psz_name ) );
            break;

        case 130:
            lua_pushnumber( L, config_GetFloat( psz_name ) );
            break;

        default:
            return vlclua_error( L );

    }
    return 1;
}
