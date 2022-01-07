
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fdc; int * fdv; int * interrupt; } ;
typedef TYPE_1__ vlclua_dtable_t ;
typedef int lua_State ;


 int luaopen_net_intf (int *) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_interrupt_create () ;
 int vlclua_get_dtable ;
 int vlclua_set_object (int *,int ,TYPE_1__*) ;

int vlclua_fd_init( lua_State *L, vlclua_dtable_t *dt )
{
    dt->interrupt = vlc_interrupt_create();
    if( unlikely(dt->interrupt == ((void*)0)) )
        return -1;
    dt->fdv = ((void*)0);
    dt->fdc = 0;
    vlclua_set_object( L, vlclua_get_dtable, dt );
    luaopen_net_intf( L );
    return 0;
}
