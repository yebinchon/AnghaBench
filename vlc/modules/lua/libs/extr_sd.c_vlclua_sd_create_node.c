
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int lua_State ;
typedef int input_item_t ;


 int EnsureUTF8 (char*) ;
 int INPUT_DURATION_INDEFINITE ;
 int INPUT_ITEM_URI_NOP ;
 int ITEM_NET_UNKNOWN ;
 int ITEM_TYPE_NODE ;
 int free (char*) ;
 int * input_item_NewExt (int ,char const*,int ,int ,int ) ;
 int input_item_SetArtURL (int *,char*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 int luaL_register (int *,int *,int ) ;
 int lua_getfield (int *,int,char*) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_newtable (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 char* lua_tostring (int *,int) ;
 int msg_Dbg (int *,char*,char*) ;
 int msg_Err (int *,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ unlikely (int ) ;
 int vlclua_node_reg ;
 int vlclua_sd_node_delete ;

__attribute__((used)) static input_item_t *vlclua_sd_create_node( services_discovery_t *p_sd,
                                            lua_State *L )
{
    if( !lua_istable( L, -1 ) )
    {
        msg_Err( p_sd, "Error: argument must be table" );
        return ((void*)0);
    }

    lua_getfield( L, -1, "title" );
    if( !lua_isstring( L, -1 ) )
    {
        msg_Err( p_sd, "Error: \"%s\" parameter is required", "title" );
        return ((void*)0);
    }

    const char *psz_name = lua_tostring( L, -1 );
    input_item_t *p_input = input_item_NewExt( INPUT_ITEM_URI_NOP, psz_name,
                                               INPUT_DURATION_INDEFINITE,
                                               ITEM_TYPE_NODE,
                                               ITEM_NET_UNKNOWN );
    lua_pop( L, 1 );

    if( unlikely(p_input == ((void*)0)) )
        return ((void*)0);

    lua_getfield( L, -1, "arturl" );
    if( lua_isstring( L, -1 ) && strcmp( lua_tostring( L, -1 ), "" ) )
    {
        char *psz_value = strdup( lua_tostring( L, -1 ) );
        EnsureUTF8( psz_value );
        msg_Dbg( p_sd, "ArtURL: %s", psz_value );

        input_item_SetArtURL( p_input, psz_value );
        free( psz_value );
    }
    lua_pop( L, 1 );

    input_item_t **udata = lua_newuserdata( L, sizeof( input_item_t * ) );
    *udata = p_input;
    if( luaL_newmetatable( L, "node" ) )
    {
        lua_newtable( L );
        luaL_register( L, ((void*)0), vlclua_node_reg );
        lua_setfield( L, -2, "__index" );
        lua_pushcfunction( L, vlclua_sd_node_delete );
        lua_setfield( L, -2, "__gc" );
    }
    lua_setmetatable( L, -2 );

    return p_input;
}
