
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_error; int b_ready; int obj; int b_done; int lock; int wait; } ;
typedef TYPE_1__ event_thread_t ;
typedef int MSG ;


 int DispatchMessage (int *) ;
 int GetMessage (int *,int ,int ,int ) ;
 int TranslateMessage (int *) ;
 int Win32VoutCloseWindow (TYPE_1__*) ;
 scalar_t__ Win32VoutCreateWindow (TYPE_1__*) ;
 scalar_t__ atomic_load (int *) ;
 int msg_Dbg (int ,char*) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *EventThread( void *p_this )
{
    event_thread_t *p_event = (event_thread_t *)p_this;
    MSG msg;
    int canc = vlc_savecancel ();


    vlc_mutex_lock( &p_event->lock );



    if( Win32VoutCreateWindow( p_event ) )
        p_event->b_error = 1;

    p_event->b_ready = 1;
    vlc_cond_signal( &p_event->wait );

    const bool b_error = p_event->b_error;
    vlc_mutex_unlock( &p_event->lock );

    if( b_error )
    {
        vlc_restorecancel( canc );
        return ((void*)0);
    }



    for( ;; )
    {
        if( !GetMessage( &msg, 0, 0, 0 ) || atomic_load( &p_event->b_done ) )
        {
            break;
        }



        TranslateMessage(&msg);
        DispatchMessage(&msg);

    }

    msg_Dbg( p_event->obj, "Win32 Vout EventThread terminating" );

    Win32VoutCloseWindow( p_event );
    vlc_restorecancel(canc);
    return ((void*)0);
}
