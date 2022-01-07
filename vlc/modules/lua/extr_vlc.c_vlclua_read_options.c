
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 int TAB_APPEND (int,char**,char*) ;
 int lua_getfield (int *,int,char*) ;
 scalar_t__ lua_isstring (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_tostring (int *,int) ;
 int msg_Dbg (int *,char*,char*) ;
 int msg_Warn (int *,char*) ;
 char* strdup (int ) ;

void vlclua_read_options( vlc_object_t *p_this, lua_State *L,
                            int *pi_options, char ***pppsz_options )
{
    lua_getfield( L, -1, "options" );
    if( lua_istable( L, -1 ) )
    {
        lua_pushnil( L );
        while( lua_next( L, -2 ) )
        {
            if( lua_isstring( L, -1 ) )
            {
                char *psz_option = strdup( lua_tostring( L, -1 ) );
                msg_Dbg( p_this, "Option: %s", psz_option );
                TAB_APPEND( *pi_options, *pppsz_options, psz_option );
            }
            else
            {
                msg_Warn( p_this, "Option should be a string" );
            }
            lua_pop( L, 1 );
        }
    }
    lua_pop( L, 1 );
}
