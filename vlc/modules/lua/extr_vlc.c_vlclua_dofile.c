
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int stream_t ;
typedef int lua_State ;
typedef scalar_t__ int64_t ;


 int LUA_MULTRET ;
 char* ToLocaleDup (char const*) ;
 int free (char*) ;
 int luaL_dofile (int *,char*) ;
 int luaL_loadbuffer (int *,char*,size_t,char*) ;
 int lua_pcall (int *,int ,int ,int ) ;
 char* malloc (scalar_t__) ;
 scalar_t__ stream_Size (int *) ;
 int strncasecmp (char*,char*,int) ;
 int strstr (char*,char*) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_NewURL (int *,char*) ;
 scalar_t__ vlc_stream_Read (int *,char*,int) ;

int vlclua_dofile( vlc_object_t *p_this, lua_State *L, const char *curi )
{
    char *uri = ToLocaleDup( curi );
    if( !strstr( uri, "://" ) ) {
        int ret = luaL_dofile( L, uri );
        free( uri );
        return ret;
    }
    if( !strncasecmp( uri, "file://", 7 ) ) {
        int ret = luaL_dofile( L, uri + 7 );
        free( uri );
        return ret;
    }
    stream_t *s = vlc_stream_NewURL( p_this, uri );
    if( !s )
    {
        free( uri );
        return 1;
    }
    int64_t i_size = stream_Size( s );
    char *p_buffer = ( i_size > 0 ) ? malloc( i_size ) : ((void*)0);
    if( !p_buffer )
    {

        vlc_stream_Delete( s );
        free( uri );
        return 1;
    }
    int64_t i_read = vlc_stream_Read( s, p_buffer, (int) i_size );
    int i_ret = ( i_read == i_size ) ? 0 : 1;
    if( !i_ret )
        i_ret = luaL_loadbuffer( L, p_buffer, (size_t) i_size, uri );
    if( !i_ret )
        i_ret = lua_pcall( L, 0, LUA_MULTRET, 0 );
    vlc_stream_Delete( s );
    free( p_buffer );
    free( uri );
    return i_ret;
}
