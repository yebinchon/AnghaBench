
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int extensions_manager_t ;
struct TYPE_8__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_9__ {int event_manager; } ;
struct TYPE_7__ {int b_activated; int i_capabilities; int * L; TYPE_6__* p_item; int dtable; } ;


 int EXT_META_LISTENER ;
 int LUA_END ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int inputItemMetaChanged ;
 int input_item_Release (TYPE_6__*) ;
 int lua_ExecuteFunction (int *,TYPE_2__*,char*,int ) ;
 int lua_close (int *) ;
 int vlc_InputItemMetaChanged ;
 int vlc_event_detach (int *,int ,int ,TYPE_2__*) ;
 int vlclua_fd_interrupt (int *) ;

int lua_ExtensionDeactivate( extensions_manager_t *p_mgr, extension_t *p_ext )
{
    assert( p_mgr != ((void*)0) && p_ext != ((void*)0) );

    if( p_ext->p_sys->b_activated == 0 )
        return VLC_SUCCESS;

    vlclua_fd_interrupt( &p_ext->p_sys->dtable );


    if( p_ext->p_sys->p_item )
    {
        if( p_ext->p_sys->i_capabilities & EXT_META_LISTENER )
            vlc_event_detach( &p_ext->p_sys->p_item->event_manager,
                              vlc_InputItemMetaChanged,
                              inputItemMetaChanged,
                              p_ext );
        input_item_Release(p_ext->p_sys->p_item);
        p_ext->p_sys->p_item = ((void*)0);
    }

    int i_ret = lua_ExecuteFunction( p_mgr, p_ext, "deactivate", LUA_END );

    if ( p_ext->p_sys->L == ((void*)0) )
        return VLC_EGENERIC;
    lua_close( p_ext->p_sys->L );
    p_ext->p_sys->L = ((void*)0);

    return i_ret;
}
