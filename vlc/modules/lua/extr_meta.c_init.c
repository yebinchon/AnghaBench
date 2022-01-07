
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;
typedef int input_item_t ;


 int * luaL_newstate () ;
 int luaL_openlibs (int *) ;
 int luaL_register_namespace (int *,char*,int ) ;
 int lua_close (int *) ;
 int luaopen_input_item (int *,int *) ;
 int luaopen_msg (int *) ;
 int luaopen_object (int *) ;
 int luaopen_stream (int *) ;
 int luaopen_strings (int *) ;
 int luaopen_variables (int *) ;
 int luaopen_xml (int *) ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*,char const*) ;
 int p_reg ;
 scalar_t__ vlclua_add_modules_path (int *,char const*) ;
 int vlclua_set_this (int *,int *) ;

__attribute__((used)) static lua_State * init( vlc_object_t *p_this, input_item_t * p_item, const char *psz_filename )
{
    lua_State * L = luaL_newstate();
    if( !L )
    {
        msg_Err( p_this, "Could not create new Lua State" );
        return ((void*)0);
    }

    vlclua_set_this( L, p_this );


    luaL_openlibs( L );

    luaL_register_namespace( L, "vlc", p_reg );

    luaopen_msg( L );
    luaopen_stream( L );
    luaopen_strings( L );
    luaopen_variables( L );
    luaopen_object( L );
    luaopen_xml( L );
    luaopen_input_item( L, p_item );

    if( vlclua_add_modules_path( L, psz_filename ) )
    {
        msg_Warn( p_this, "Error while setting the module search path for %s",
                  psz_filename );
        lua_close( L );
        return ((void*)0);
    }

    return L;
}
