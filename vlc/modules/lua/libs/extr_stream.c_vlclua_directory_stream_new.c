
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int stream_t ;
typedef int lua_State ;


 scalar_t__ VLC_SUCCESS ;
 char* luaL_checkstring (int *,int) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_NewURL (int *,char const*) ;
 scalar_t__ vlc_stream_directory_Attach (int **,int *) ;
 int vlclua_error (int *) ;
 int * vlclua_get_this (int *) ;
 int vlclua_stream_new_inner (int *,int *) ;

__attribute__((used)) static int vlclua_directory_stream_new( lua_State *L )
{
    vlc_object_t * p_this = vlclua_get_this( L );
    const char * psz_url = luaL_checkstring( L, 1 );
    stream_t *p_stream = vlc_stream_NewURL( p_this, psz_url );
    if( !p_stream )
        return vlclua_error( L );
    if( vlc_stream_directory_Attach( &p_stream, ((void*)0) ) != VLC_SUCCESS )
    {
        vlc_stream_Delete( p_stream );
        return vlclua_error( L );
    }
    return vlclua_stream_new_inner( L, p_stream );
}
