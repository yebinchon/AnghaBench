
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int bottom; int right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_10__ {int b_ready; int b_error; int hvideownd; int hparent; int parent_window; int obj; int thread; int lock; int wait; int b_done; TYPE_1__ window_area; int is_projected; } ;
typedef TYPE_2__ event_thread_t ;
struct TYPE_11__ {int hvideownd; int hparent; int parent_window; } ;
typedef TYPE_3__ event_hwnd_t ;
struct TYPE_12__ {int height; int width; int is_projected; } ;
typedef TYPE_4__ event_cfg_t ;


 int EventThread ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 int atomic_store (int *,int) ;
 int msg_Dbg (int ,char*) ;
 int msg_Err (int ,char*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_2__*,int ) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int EventThreadStart( event_thread_t *p_event, event_hwnd_t *p_hwnd, const event_cfg_t *p_cfg )
{
    p_event->is_projected = p_cfg->is_projected;
    p_event->window_area.left = 0;
    p_event->window_area.top = 0;
    p_event->window_area.right = p_cfg->width;
    p_event->window_area.bottom = p_cfg->height;

    p_event->b_ready = 0;
    atomic_store( &p_event->b_done, 0);
    p_event->b_error = 0;

    if( vlc_clone( &p_event->thread, EventThread, p_event,
                   VLC_THREAD_PRIORITY_LOW ) )
    {
        msg_Err( p_event->obj, "cannot create Vout EventThread" );
        return VLC_EGENERIC;
    }

    vlc_mutex_lock( &p_event->lock );
    while( !p_event->b_ready )
        vlc_cond_wait( &p_event->wait, &p_event->lock );
    const bool b_error = p_event->b_error;
    vlc_mutex_unlock( &p_event->lock );

    if( b_error )
    {
        vlc_join( p_event->thread, ((void*)0) );
        p_event->b_ready = 0;
        return VLC_EGENERIC;
    }
    msg_Dbg( p_event->obj, "Vout EventThread running" );


    p_hwnd->parent_window = p_event->parent_window;
    p_hwnd->hparent = p_event->hparent;
    p_hwnd->hvideownd = p_event->hvideownd;
    return VLC_SUCCESS;
}
