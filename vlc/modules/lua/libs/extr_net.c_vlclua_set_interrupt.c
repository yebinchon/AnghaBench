
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interrupt; } ;
typedef TYPE_1__ vlclua_dtable_t ;
typedef int vlc_interrupt_t ;
typedef int lua_State ;


 int * vlc_interrupt_set (int ) ;
 TYPE_1__* vlclua_get_dtable (int *) ;

vlc_interrupt_t *vlclua_set_interrupt( lua_State *L )
{
    vlclua_dtable_t *dt = vlclua_get_dtable( L );
    return vlc_interrupt_set( dt->interrupt );
}
