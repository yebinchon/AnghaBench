
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ vout_window_t ;
typedef int vlc_object_t ;
struct TYPE_7__ {int class_video; TYPE_1__* parent_window; int b_done; int wait; int lock; int * obj; } ;
typedef TYPE_2__ event_thread_t ;


 int ARRAY_SIZE (int ) ;
 int TEXT (char*) ;
 scalar_t__ VOUT_WINDOW_TYPE_HWND ;
 int _snwprintf (int ,int ,int ,void*) ;
 int atomic_init (int *,int) ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (int *,char*) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

event_thread_t *EventThreadCreate( vlc_object_t *obj, vout_window_t *parent_window)
{
    if (parent_window->type != VOUT_WINDOW_TYPE_HWND)
        return ((void*)0);







    msg_Dbg( obj, "creating Vout EventThread" );
    event_thread_t *p_event = malloc( sizeof(*p_event) );
    if( !p_event )
        return ((void*)0);

    p_event->obj = obj;
    vlc_mutex_init( &p_event->lock );
    vlc_cond_init( &p_event->wait );
    atomic_init( &p_event->b_done, 0 );

    p_event->parent_window = parent_window;

    _snwprintf( p_event->class_video, ARRAY_SIZE(p_event->class_video),
                TEXT("VLC video output %p"), (void *)p_event );
    return p_event;
}
