
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int lock; scalar_t__ p_va; int cc; int * p_context; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int AVCodecContext ;


 int avcodec_flush_buffers (int *) ;
 int avcodec_free_context (int **) ;
 scalar_t__ avcodec_is_open (int *) ;
 int cc_Flush (int *) ;
 int free (TYPE_2__*) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_va_Delete (scalar_t__) ;

void EndVideoDec( vlc_object_t *obj )
{
    decoder_t *p_dec = (decoder_t *)obj;
    decoder_sys_t *p_sys = p_dec->p_sys;
    AVCodecContext *ctx = p_sys->p_context;


    if( avcodec_is_open( ctx ) )
        avcodec_flush_buffers( ctx );

    cc_Flush( &p_sys->cc );

    avcodec_free_context( &ctx );

    if( p_sys->p_va )
        vlc_va_Delete( p_sys->p_va );

    vlc_mutex_destroy( &p_sys->lock );
    free( p_sys );
}
