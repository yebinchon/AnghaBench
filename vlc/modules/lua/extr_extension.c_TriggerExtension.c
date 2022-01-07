
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int extensions_manager_t ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_5__ {int * L; int dtable; } ;


 int LUA_END ;
 int lua_ExecuteFunction (int *,TYPE_2__*,char*,int ) ;
 int lua_close (int *) ;
 int vlclua_fd_cleanup (int *) ;

__attribute__((used)) static int TriggerExtension( extensions_manager_t *p_mgr,
                             extension_t *p_ext )
{
    int i_ret = lua_ExecuteFunction( p_mgr, p_ext, "trigger", LUA_END );


    if( p_ext->p_sys->L )
    {
        vlclua_fd_cleanup( &p_ext->p_sys->dtable );
        lua_close( p_ext->p_sys->L );
    }
    p_ext->p_sys->L = ((void*)0);

    return i_ret;
}
