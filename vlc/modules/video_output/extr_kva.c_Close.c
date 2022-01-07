
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int ack_event; int tid; int hmq; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int vlc_object_t ;


 int DCWW_WAIT ;
 int DosCloseEventSem (int ) ;
 int DosWaitThread (int *,int ) ;
 int WM_QUIT ;
 int WinPostQueueMsg (int ,int ,int ,int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close ( vlc_object_t *object )
{
    vout_display_t * vd = (vout_display_t *)object;
    vout_display_sys_t * sys = vd->sys;

    WinPostQueueMsg( sys->hmq, WM_QUIT, 0, 0 );

    DosWaitThread( &sys->tid, DCWW_WAIT );

    DosCloseEventSem( sys->ack_event );

    free( sys );
}
