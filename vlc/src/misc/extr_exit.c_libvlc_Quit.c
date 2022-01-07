
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int opaque; int (* handler ) (int ) ;} ;
typedef TYPE_1__ vlc_exit_t ;
typedef int libvlc_int_t ;
struct TYPE_4__ {TYPE_1__ exit; } ;


 TYPE_2__* libvlc_priv (int *) ;
 int msg_Dbg (int *,char*) ;
 int stub1 (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void libvlc_Quit( libvlc_int_t *p_libvlc )
{
    vlc_exit_t *exit = &libvlc_priv( p_libvlc )->exit;

    msg_Dbg( p_libvlc, "exiting" );
    vlc_mutex_lock( &exit->lock );
    if( exit->handler != ((void*)0) )
        exit->handler( exit->opaque );
    else
        msg_Dbg( p_libvlc, "no exit handler" );
    vlc_mutex_unlock( &exit->lock );
}
