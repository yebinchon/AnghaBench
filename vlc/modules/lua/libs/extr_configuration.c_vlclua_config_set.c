
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;






 int config_GetType (char const*) ;
 int config_PutFloat (char const*,int ) ;
 int config_PutInt (char const*,int ) ;
 int config_PutPsz (char const*,char*) ;
 int luaL_checkboolean (int *,int) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_checknumber (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int vlclua_error (int *) ;

__attribute__((used)) static int vlclua_config_set( lua_State *L )
{
    const char *psz_name = luaL_checkstring( L, 1 );
    switch( config_GetType( psz_name ) )
    {
        case 128:
            config_PutPsz( psz_name, luaL_checkstring( L, 2 ) );
            break;

        case 129:
            config_PutInt( psz_name, luaL_checkinteger( L, 2 ) );
            break;

        case 131:
            config_PutInt( psz_name, luaL_checkboolean( L, 2 ) );
            break;

        case 130:
            config_PutFloat( psz_name, luaL_checknumber( L, 2 ) );
            break;

        default:
            return vlclua_error( L );
    }
    return 0;
}
