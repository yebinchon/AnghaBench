
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct TYPE_6__ {TYPE_1__ fifo; } ;
typedef TYPE_2__ sout_stream_id_sys_t ;


 int free (TYPE_2__*) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void DeleteSoutStreamID( sout_stream_id_sys_t *id )
{
    if( id )
    {
        vlc_mutex_destroy(&id->fifo.lock);
        free( id );
    }
}
