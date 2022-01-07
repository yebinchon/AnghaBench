
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int lua_State ;
typedef int intf_thread_t ;
typedef int extensions_manager_t ;
struct TYPE_7__ {TYPE_1__* p_sys; int psz_name; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_6__ {int * L; int dtable; } ;


 int VLC_OBJECT (int *) ;
 int assert (int ) ;
 int * luaL_newstate () ;
 int luaL_openlibs (int *) ;
 int luaL_register_namespace (int *,char*,int ) ;
 int lua_close (int *) ;
 int lua_getglobal (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_register (int *,char*,int *) ;
 int lua_setfield (int *,int,char*) ;
 int lua_tostring (int *,int ) ;
 int luaopen_config (int *) ;
 int luaopen_dialog (int *,TYPE_2__*) ;
 int luaopen_errno (int *) ;
 int luaopen_input (int *) ;
 int luaopen_msg (int *) ;
 int luaopen_object (int *) ;
 int luaopen_osd (int *) ;
 int luaopen_playlist (int *) ;
 int luaopen_rand (int *) ;
 int luaopen_stream (int *) ;
 int luaopen_strings (int *) ;
 int luaopen_variables (int *) ;
 int luaopen_video (int *) ;
 int luaopen_vlcio (int *) ;
 int luaopen_vlm (int *) ;
 int luaopen_volume (int *) ;
 int luaopen_win (int *) ;
 int luaopen_xml (int *) ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*,int ,...) ;
 int p_reg ;
 int strncmp (int ,char*,int) ;
 int * vlc_intf_GetMainPlaylist (int *) ;
 scalar_t__ vlc_object_parent (int *) ;
 scalar_t__ vlclua_add_modules_path (int *,int ) ;
 scalar_t__ vlclua_dofile (int ,int *,int ) ;
 int vlclua_extension_deactivate ;
 int vlclua_extension_keep_alive ;
 int vlclua_extension_require ;
 int vlclua_extension_set (int *,TYPE_2__*) ;
 int vlclua_fd_cleanup (int *) ;
 scalar_t__ vlclua_fd_init (int *,int *) ;
 int vlclua_set_playlist_internal (int *,int *) ;
 int vlclua_set_this (int *,int *) ;

__attribute__((used)) static lua_State* GetLuaState( extensions_manager_t *p_mgr,
                               extension_t *p_ext )
{
    assert( p_ext != ((void*)0) );
    lua_State *L = p_ext->p_sys->L;

    if( !L )
    {
        L = luaL_newstate();
        if( !L )
        {
            msg_Err( p_mgr, "Could not create new Lua State" );
            return ((void*)0);
        }
        vlclua_set_this( L, p_mgr );
        intf_thread_t *intf = (intf_thread_t *) vlc_object_parent(p_mgr);
        vlc_playlist_t *playlist = vlc_intf_GetMainPlaylist(intf);
        vlclua_set_playlist_internal(L, playlist);
        vlclua_extension_set( L, p_ext );

        luaL_openlibs( L );
        luaL_register_namespace( L, "vlc", p_reg );
        luaopen_msg( L );


        luaopen_config( L );
        luaopen_dialog( L, p_ext );
        luaopen_input( L );
        luaopen_msg( L );
        if( vlclua_fd_init( L, &p_ext->p_sys->dtable ) )
        {
            lua_close( L );
            return ((void*)0);
        }
        luaopen_object( L );
        luaopen_osd( L );
        luaopen_playlist( L );
        luaopen_stream( L );
        luaopen_strings( L );
        luaopen_variables( L );
        luaopen_video( L );
        luaopen_vlm( L );
        luaopen_volume( L );
        luaopen_xml( L );
        luaopen_vlcio( L );
        luaopen_errno( L );
        luaopen_rand( L );





        lua_getglobal( L, "vlc" );
        lua_pushcfunction( L, vlclua_extension_deactivate );
        lua_setfield( L, -2, "deactivate" );
        lua_pushcfunction( L, vlclua_extension_keep_alive );
        lua_setfield( L, -2, "keep_alive" );


        if( !strncmp( p_ext->psz_name, "zip://", 6 ) )
        {

            lua_register( L, "require", &vlclua_extension_require );
        }
        else
        {
            if( vlclua_add_modules_path( L, p_ext->psz_name ) )
            {
                msg_Warn( p_mgr, "Error while setting the module "
                          "search path for %s", p_ext->psz_name );
                vlclua_fd_cleanup( &p_ext->p_sys->dtable );
                lua_close( L );
                return ((void*)0);
            }
        }

        if( vlclua_dofile( VLC_OBJECT( p_mgr ), L, p_ext->psz_name ) )
        {
            msg_Warn( p_mgr, "Error loading script %s: %s", p_ext->psz_name,
                      lua_tostring( L, lua_gettop( L ) ) );
            vlclua_fd_cleanup( &p_ext->p_sys->dtable );
            lua_close( L );
            return ((void*)0);
        }

        p_ext->p_sys->L = L;
    }

    return L;
}
