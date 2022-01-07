
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int logger; } ;
struct TYPE_6__ {TYPE_1__ obj; TYPE_3__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_7__ {struct TYPE_7__* psz_filename; int dtable; int L; int thread; } ;
typedef TYPE_3__ intf_sys_t ;


 int free (TYPE_3__*) ;
 int lua_close (int ) ;
 int vlc_LogDestroy (int ) ;
 int vlc_join (int ,int *) ;
 int vlclua_fd_cleanup (int *) ;
 int vlclua_fd_interrupt (int *) ;

void Close_LuaIntf( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t*)p_this;
    intf_sys_t *p_sys = p_intf->p_sys;

    vlclua_fd_interrupt( &p_sys->dtable );
    vlc_join( p_sys->thread, ((void*)0) );

    lua_close( p_sys->L );
    vlclua_fd_cleanup( &p_sys->dtable );
    free( p_sys->psz_filename );
    free( p_sys );
    vlc_LogDestroy( p_intf->obj.logger );
}
