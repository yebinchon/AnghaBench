
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_5__ {int command_lock; } ;


 int QueueDeactivateCommand (TYPE_2__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 TYPE_2__* vlclua_extension_get (int *) ;

int vlclua_extension_deactivate( lua_State *L )
{
    extension_t *p_ext = vlclua_extension_get( L );
    vlc_mutex_lock( &p_ext->p_sys->command_lock );
    bool b_ret = QueueDeactivateCommand( p_ext );
    vlc_mutex_unlock( &p_ext->p_sys->command_lock );
    return ( b_ret == 1 ) ? 1 : 0;
}
