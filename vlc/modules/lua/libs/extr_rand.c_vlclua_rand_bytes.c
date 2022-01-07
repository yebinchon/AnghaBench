
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int free (char*) ;
 int luaL_checkinteger (int *,int) ;
 int lua_pushlstring (int *,char*,int) ;
 char* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_rand_bytes (char*,int) ;
 int vlclua_error (int *) ;

__attribute__((used)) static int vlclua_rand_bytes( lua_State *L )
{
    lua_Integer i_size = luaL_checkinteger( L, 1 );
    char* p_buff = malloc( i_size * sizeof( *p_buff ) );
    if ( unlikely( p_buff == ((void*)0) ) )
        return vlclua_error( L );
    vlc_rand_bytes( p_buff, i_size );
    lua_pushlstring( L, p_buff, i_size );
    free( p_buff );
    return 1;
}
