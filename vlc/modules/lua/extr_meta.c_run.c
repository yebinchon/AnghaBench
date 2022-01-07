
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int meta_fetcher_scope_t ;
struct TYPE_4__ {int (* pf_validator ) (TYPE_1__ const*,int ) ;} ;
typedef TYPE_1__ luabatch_context_t ;
typedef int lua_State ;


 int FETCHER_SCOPE_LOCAL ;
 int FETCHER_SCOPE_NETWORK ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (char*) ;
 char* luaL_strdupornull (int *,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char const*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isfunction (int *,int ) ;
 scalar_t__ lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_setglobal (int *,char const*) ;
 int lua_tostring (int *,int ) ;
 int msg_Dbg (int *,char*,char const*) ;
 int msg_Warn (int *,char*,char const*,char const*,...) ;
 int strcmp (char*,char*) ;
 int stub1 (TYPE_1__ const*,int ) ;
 scalar_t__ vlclua_dofile (int *,int *,char const*) ;

__attribute__((used)) static int run( vlc_object_t *p_this, const char * psz_filename,
                lua_State * L, const char *luafunction,
                const luabatch_context_t *p_context )
{


    lua_pushnil( L );
    lua_setglobal( L, luafunction );


    if( vlclua_dofile( p_this, L, psz_filename ) )
    {
        msg_Warn( p_this, "Error loading script %s: %s", psz_filename,
                 lua_tostring( L, lua_gettop( L ) ) );
        goto error;
    }


    meta_fetcher_scope_t e_scope = FETCHER_SCOPE_NETWORK;
    lua_getglobal( L, "descriptor" );
    if( lua_isfunction( L, lua_gettop( L ) ) && !lua_pcall( L, 0, 1, 0 ) )
    {
        lua_getfield( L, -1, "scope" );
        char *psz_scope = luaL_strdupornull( L, -1 );
        if ( psz_scope && !strcmp( psz_scope, "local" ) )
            e_scope = FETCHER_SCOPE_LOCAL;
        free( psz_scope );
        lua_pop( L, 1 );
    }
    lua_pop( L, 1 );

    if ( p_context && p_context->pf_validator && !p_context->pf_validator( p_context, e_scope ) )
    {
        msg_Dbg( p_this, "skipping script (unmatched scope) %s", psz_filename );
        goto error;
    }

    lua_getglobal( L, luafunction );

    if( !lua_isfunction( L, lua_gettop( L ) ) )
    {
        msg_Warn( p_this, "Error while running script %s, "
                 "function %s() not found", psz_filename, luafunction );
        goto error;
    }

    if( lua_pcall( L, 0, 1, 0 ) )
    {
        msg_Warn( p_this, "Error while running script %s, "
                 "function %s(): %s", psz_filename, luafunction,
                 lua_tostring( L, lua_gettop( L ) ) );
        goto error;
    }
    return VLC_SUCCESS;

error:
    lua_pop( L, 1 );
    return VLC_EGENERIC;
}
