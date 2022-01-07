
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int stream_t ;
typedef int lua_State ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_getmetatable (int *,char*) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int lua_settop (int *,int) ;
 char* lua_tostring (int *,int) ;
 int msg_Dbg (int *,char*,...) ;
 int * vlc_stream_FilterNew (int *,char const*) ;
 int vlclua_error (int *) ;
 int * vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_stream_add_filter( lua_State *L )
{
    vlc_object_t *p_this = vlclua_get_this( L );


    lua_settop( L, 2 );

    stream_t **pp_stream = (stream_t **)luaL_checkudata( L, 1, "stream" );
    if( !*pp_stream ) return vlclua_error( L );
    const char *psz_filter = ((void*)0);

    if( lua_isstring( L, 2 ) )
        psz_filter = lua_tostring( L, 2 );

    if( !psz_filter || !*psz_filter )
    {
        msg_Dbg( p_this, "adding all automatic stream filters" );
        while( 1 )
        {

            stream_t *p_filtered = vlc_stream_FilterNew( *pp_stream, ((void*)0) );
            if( !p_filtered )
                break;
            else
            {
                msg_Dbg( p_this, "inserted an automatic stream filter" );
                *pp_stream = p_filtered;
            }
        }
        luaL_getmetatable( L, "stream" );
        lua_setmetatable( L, 1 );
    }
    else
    {

        stream_t *p_filter = vlc_stream_FilterNew( *pp_stream, psz_filter );
        if( !p_filter )
            msg_Dbg( p_this, "Unable to open requested stream filter '%s'",
                     psz_filter );
        else
        {
            *pp_stream = p_filter;
            luaL_getmetatable( L, "stream" );
            lua_setmetatable( L, 1 );
        }
    }

    return 1;
}
