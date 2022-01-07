
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int extensions_manager_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_4__ {int b_activated; int b_exiting; int wait; int dtable; } ;


 int msg_Dbg (int *,char*) ;
 int vlc_cond_signal (int *) ;
 int vlclua_fd_interrupt (int *) ;

void KillExtension( extensions_manager_t *p_mgr, extension_t *p_ext )
{
    msg_Dbg( p_mgr, "Killing extension now" );
    vlclua_fd_interrupt( &p_ext->p_sys->dtable );
    p_ext->p_sys->b_activated = 0;
    p_ext->p_sys->b_exiting = 1;
    vlc_cond_signal( &p_ext->p_sys->wait );
}
