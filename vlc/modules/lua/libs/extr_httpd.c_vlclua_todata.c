
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int memcpy (int *,char const*,size_t) ;
 int * vlc_alloc (size_t,int) ;

__attribute__((used)) static uint8_t *vlclua_todata( lua_State *L, int narg, int *pi_data )
{
    size_t i_data;
    const char *psz_data = lua_tolstring( L, narg, &i_data );
    uint8_t *p_data = vlc_alloc( i_data, sizeof(uint8_t) );
    *pi_data = (int)i_data;
    if( !p_data )
    {
        luaL_error( L, "Error while allocating buffer." );
        return ((void*)0);
    }
    memcpy( p_data, psz_data, i_data );
    return p_data;
}
