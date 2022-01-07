
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int worker; } ;
typedef TYPE_1__ vlc_thumbnailer_t ;
struct TYPE_13__ {int timeout; int input_item; } ;
struct TYPE_12__ {int done; int lock; TYPE_3__ params; int * input_thread; TYPE_1__* thumbnailer; } ;
typedef TYPE_2__ vlc_thumbnailer_request_t ;
typedef TYPE_3__ vlc_thumbnailer_params_t ;


 int MS_FROM_VLC_TICK (int ) ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 scalar_t__ background_worker_Push (int ,TYPE_2__*,TYPE_2__*,int) ;
 int input_item_Hold (int ) ;
 TYPE_2__* malloc (int) ;
 int thumbnailer_request_Release (TYPE_2__*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static vlc_thumbnailer_request_t*
thumbnailer_RequestCommon( vlc_thumbnailer_t* thumbnailer,
                           const vlc_thumbnailer_params_t* params )
{
    vlc_thumbnailer_request_t *request = malloc( sizeof( *request ) );
    if ( unlikely( request == ((void*)0) ) )
        return ((void*)0);
    request->thumbnailer = thumbnailer;
    request->input_thread = ((void*)0);
    request->params = *(vlc_thumbnailer_params_t*)params;
    request->done = 0;
    input_item_Hold( request->params.input_item );
    vlc_mutex_init( &request->lock );

    int timeout = params->timeout == VLC_TICK_INVALID ?
                0 : MS_FROM_VLC_TICK( params->timeout );
    if ( background_worker_Push( thumbnailer->worker, request, request,
                                  timeout ) != VLC_SUCCESS )
    {
        thumbnailer_request_Release( request );
        return ((void*)0);
    }
    return request;
}
