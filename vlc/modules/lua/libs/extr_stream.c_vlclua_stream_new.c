
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int stream_t ;
typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int * vlc_stream_NewMRL (int *,char const*) ;
 int * vlclua_get_this (int *) ;
 int vlclua_stream_new_inner (int *,int *) ;

__attribute__((used)) static int vlclua_stream_new( lua_State *L )
{
    vlc_object_t * p_this = vlclua_get_this( L );
    const char * psz_url = luaL_checkstring( L, 1 );
    stream_t *p_stream = vlc_stream_NewMRL( p_this, psz_url );
    return vlclua_stream_new_inner( L, p_stream );
}
