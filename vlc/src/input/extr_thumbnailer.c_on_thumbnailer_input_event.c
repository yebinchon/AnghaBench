
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* cb ) (int ,int *) ;int user_data; } ;
struct TYPE_8__ {int done; TYPE_3__* thumbnailer; int lock; TYPE_2__ params; int input_thread; } ;
typedef TYPE_4__ vlc_thumbnailer_request_t ;
struct TYPE_5__ {scalar_t__ value; } ;
struct vlc_input_event {scalar_t__ type; int * thumbnail; TYPE_1__ state; } ;
typedef int picture_t ;
typedef int input_thread_t ;
struct TYPE_7__ {int worker; } ;


 scalar_t__ END_S ;
 scalar_t__ ERROR_S ;
 scalar_t__ INPUT_EVENT_STATE ;
 scalar_t__ INPUT_EVENT_THUMBNAIL_READY ;
 int VLC_UNUSED (int *) ;
 int background_worker_RequestProbe (int ) ;
 int input_Stop (int ) ;
 int stub1 (int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
on_thumbnailer_input_event( input_thread_t *input,
                            const struct vlc_input_event *event, void *userdata )
{
    VLC_UNUSED(input);
    if ( event->type != INPUT_EVENT_THUMBNAIL_READY &&
         ( event->type != INPUT_EVENT_STATE || ( event->state.value != ERROR_S &&
                                                 event->state.value != END_S ) ) )
         return;

    vlc_thumbnailer_request_t* request = userdata;
    picture_t *pic = ((void*)0);

    if ( event->type == INPUT_EVENT_THUMBNAIL_READY )
    {




        input_Stop( request->input_thread );
        pic = event->thumbnail;
    }
    vlc_mutex_lock( &request->lock );
    request->done = 1;




    if ( request->params.cb )
    {
        request->params.cb( request->params.user_data, pic );
        request->params.cb = ((void*)0);
    }
    vlc_mutex_unlock( &request->lock );
    background_worker_RequestProbe( request->thumbnailer->worker );
}
