
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_ready; int thread; scalar_t__ hvideownd; int b_done; } ;
typedef TYPE_1__ event_thread_t ;


 int PostMessage (scalar_t__,int ,int ,int ) ;
 int WM_NULL ;
 int atomic_store (int *,int) ;
 int vlc_join (int ,int *) ;

void EventThreadStop( event_thread_t *p_event )
{
    if( !p_event->b_ready )
        return;

    atomic_store( &p_event->b_done, 1 );



    if( p_event->hvideownd )
        PostMessage( p_event->hvideownd, WM_NULL, 0, 0);

    vlc_join( p_event->thread, ((void*)0) );
    p_event->b_ready = 0;
}
