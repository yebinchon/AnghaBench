
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ encoder_t ;
struct TYPE_5__ {int p_buffer; int p_interleave_buf; int p_context; int frame; } ;
typedef TYPE_2__ encoder_sys_t ;


 int av_frame_free (int *) ;
 int av_free (int ) ;
 int avcodec_close (int ) ;
 int avcodec_free_context (int *) ;
 int free (TYPE_2__*) ;
 int vlc_avcodec_lock () ;
 int vlc_avcodec_unlock () ;

void EndVideoEnc( vlc_object_t *p_this )
{
    encoder_t *p_enc = (encoder_t *)p_this;
    encoder_sys_t *p_sys = p_enc->p_sys;

    av_frame_free( &p_sys->frame );

    vlc_avcodec_lock();
    avcodec_close( p_sys->p_context );
    vlc_avcodec_unlock();
    avcodec_free_context( &p_sys->p_context );


    av_free( p_sys->p_interleave_buf );
    av_free( p_sys->p_buffer );

    free( p_sys );
}
