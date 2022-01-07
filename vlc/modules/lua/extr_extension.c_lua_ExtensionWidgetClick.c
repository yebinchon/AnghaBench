
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
typedef int extensions_manager_t ;
typedef int extension_widget_t ;
struct TYPE_7__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_6__ {int L; } ;


 int * GetLuaState (int *,TYPE_2__*) ;
 int LUA_END ;
 int LUA_REGISTRYINDEX ;
 int VLC_SUCCESS ;
 int lua_ExecuteFunction (int *,TYPE_2__*,int *,int ) ;
 int lua_gettable (int *,int ) ;
 int lua_pushlightuserdata (int *,int *) ;

int lua_ExtensionWidgetClick( extensions_manager_t *p_mgr,
                              extension_t *p_ext,
                              extension_widget_t *p_widget )
{
    if( !p_ext->p_sys->L )
        return VLC_SUCCESS;

    lua_State *L = GetLuaState( p_mgr, p_ext );
    lua_pushlightuserdata( L, p_widget );
    lua_gettable( L, LUA_REGISTRYINDEX );
    return lua_ExecuteFunction( p_mgr, p_ext, ((void*)0), LUA_END );
}
