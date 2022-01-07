
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int p_item; } ;
typedef TYPE_1__ luabatch_context_t ;
typedef int lua_State ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int * init (int *,int ,char const*) ;
 int input_item_SetArtURL (int ,char const*) ;
 int lua_Dbg (int *,char*,char const*) ;
 int lua_close (int *) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_isnoneornil (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 char* lua_tostring (int *,int) ;
 int msg_Err (int *,char*,...) ;
 int run (int *,char const*,int *,char*,TYPE_1__ const*) ;

__attribute__((used)) static int fetch_art( vlc_object_t *p_this, const char * psz_filename,
                      const luabatch_context_t *p_context )
{
    lua_State *L = init( p_this, p_context->p_item, psz_filename );
    if( !L )
        return VLC_EGENERIC;

    int i_ret = run(p_this, psz_filename, L, "fetch_art", p_context);
    if(i_ret != VLC_SUCCESS)
    {
        lua_close( L );
        return i_ret;
    }

    if(lua_gettop( L ))
    {
        const char * psz_value;

        if( lua_isstring( L, -1 ) )
        {
            psz_value = lua_tostring( L, -1 );
            if( psz_value && *psz_value != 0 )
            {
                lua_Dbg( p_this, "setting arturl: %s", psz_value );
                input_item_SetArtURL ( p_context->p_item, psz_value );
                lua_close( L );
                return VLC_SUCCESS;
            }
        }
        else if( !lua_isnoneornil( L, -1 ) )
        {
            msg_Err( p_this, "Lua art fetcher script %s: "
                 "didn't return a string", psz_filename );
        }
    }
    else
    {
        msg_Err( p_this, "Script went completely foobar" );
    }

    lua_close( L );
    return VLC_EGENERIC;
}
