
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* cb ) (int ,int *) ;int user_data; } ;
struct TYPE_4__ {int * input_thread; int lock; TYPE_1__ params; } ;
typedef TYPE_2__ vlc_thumbnailer_request_t ;


 int VLC_UNUSED (void*) ;
 int assert (int ) ;
 int input_Stop (int *) ;
 int stub1 (int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void thumbnailer_request_Stop( void* owner, void* handle )
{
    VLC_UNUSED(owner);

    vlc_thumbnailer_request_t *request = handle;
    vlc_mutex_lock( &request->lock );




    if ( request->params.cb != ((void*)0) )
    {
        request->params.cb( request->params.user_data, ((void*)0) );
        request->params.cb = ((void*)0);
    }
    vlc_mutex_unlock( &request->lock );
    assert( request->input_thread != ((void*)0) );
    input_Stop( request->input_thread );
}
