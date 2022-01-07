
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int input_item; } ;
struct TYPE_5__ {int lock; TYPE_1__ params; scalar_t__ input_thread; } ;
typedef TYPE_2__ vlc_thumbnailer_request_t ;


 int free (TYPE_2__*) ;
 int input_Close (scalar_t__) ;
 int input_item_Release (int ) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void thumbnailer_request_Release( void* data )
{
    vlc_thumbnailer_request_t* request = data;
    if ( request->input_thread )
        input_Close( request->input_thread );

    input_item_Release( request->params.input_item );
    vlc_mutex_destroy( &request->lock );
    free( request );
}
