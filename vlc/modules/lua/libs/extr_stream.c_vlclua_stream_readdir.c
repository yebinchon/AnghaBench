
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int psz_url; int * pf_readdir; } ;
typedef TYPE_2__ stream_t ;
typedef int lua_State ;
typedef int input_item_t ;
struct TYPE_10__ {int i_children; TYPE_1__** pp_children; } ;
typedef TYPE_3__ input_item_node_t ;
struct TYPE_8__ {int p_item; } ;


 int VLC_INPUT_OPTION_TRUSTED ;
 scalar_t__ asprintf (char**,char*,char const*) ;
 int free (char*) ;
 int input_item_AddOption (int *,char*,int ) ;
 int * input_item_New (int ,int *) ;
 int input_item_Release (int *) ;
 TYPE_3__* input_item_node_Create (int *) ;
 int input_item_node_Delete (TYPE_3__*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_settable (int *,int) ;
 int lua_toboolean (int *,int) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ vlc_stream_ReadDir (TYPE_2__*,TYPE_3__*) ;
 int vlclua_error (int *) ;
 int vlclua_input_item_get (int *,int ) ;

__attribute__((used)) static int vlclua_stream_readdir( lua_State *L )
{
    stream_t **pp_stream = (stream_t **)luaL_checkudata( L, 1, "stream" );
    const char *psz_filter = ((void*)0);
    bool b_show_hidden = 0;
    if( lua_gettop( L ) >= 2 )
    {
        psz_filter = lua_tostring( L, 2 );
        if( lua_gettop( L ) >= 3 )
            b_show_hidden = lua_toboolean( L, 3 );
    }

    if( !pp_stream || !*pp_stream )
        return vlclua_error( L );
    if( (*pp_stream)->pf_readdir == ((void*)0) )
        return vlclua_error( L );

    input_item_t *p_input = input_item_New( (*pp_stream)->psz_url, ((void*)0) );
    if( psz_filter )
    {
        char *psz_opt;
        if( asprintf( &psz_opt, ":ignore-filetype=\"%s\"", psz_filter ) < 0 )
        {
            input_item_Release( p_input );
            return vlclua_error( L );
        }
        input_item_AddOption( p_input, psz_opt, VLC_INPUT_OPTION_TRUSTED );
        free( psz_opt );
    }
    else
        input_item_AddOption( p_input, "ignore-filetypes=\"\"",
                              VLC_INPUT_OPTION_TRUSTED );
    if( b_show_hidden )
        input_item_AddOption( p_input, "show-hiddenfiles",
                              VLC_INPUT_OPTION_TRUSTED );
    input_item_node_t *p_items = input_item_node_Create( p_input );
    input_item_Release( p_input );
    if( !p_items )
        return vlclua_error( L );
    if ( vlc_stream_ReadDir( *pp_stream, p_items ) )
    {
        input_item_node_Delete( p_items );
        return vlclua_error( L );
    }
    lua_newtable( L );
    for ( int i = 0; i < p_items->i_children; ++i )
    {
        lua_pushinteger( L, i + 1 );
        vlclua_input_item_get( L, p_items->pp_children[i]->p_item );
        lua_settable( L, -3 );
    }
    input_item_node_Delete( p_items );
    return 1;
}
