
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int lock; scalar_t__ p_raw1394; int * p_frame; TYPE_3__* p_ev; } ;
typedef TYPE_2__ access_sys_t ;
struct TYPE_7__ {int ** pp_last; int * p_frame; int lock; int thread; } ;


 int AVCClose (TYPE_1__*) ;
 int block_ChainRelease (int *) ;
 int free (TYPE_3__*) ;
 int raw1394_destroy_handle (scalar_t__) ;
 int raw1394_iso_shutdown (scalar_t__) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    stream_t *p_access = (stream_t*)p_this;
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->p_ev )
    {

        vlc_cancel( p_sys->p_ev->thread );

        if( p_sys->p_raw1394 )
            raw1394_iso_shutdown( p_sys->p_raw1394 );

        vlc_join( p_sys->p_ev->thread, ((void*)0) );
        vlc_mutex_destroy( &p_sys->p_ev->lock );


        if( p_sys->p_ev->p_frame )
        {
            block_ChainRelease( p_sys->p_ev->p_frame );
            p_sys->p_ev->p_frame = ((void*)0);
            p_sys->p_ev->pp_last = &p_sys->p_frame;
        }
        free( p_sys->p_ev );
    }

    if( p_sys->p_frame )
        block_ChainRelease( p_sys->p_frame );
    if( p_sys->p_raw1394 )
        raw1394_destroy_handle( p_sys->p_raw1394 );

    AVCClose( p_access );

    vlc_mutex_destroy( &p_sys->lock );
}
