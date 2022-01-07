
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_encoder; int lock_out; int pp_pics; int p_buffers; } ;
typedef TYPE_1__ transcode_encoder_t ;
struct TYPE_8__ {scalar_t__ i_cat; } ;
struct TYPE_7__ {TYPE_5__ fmt_out; TYPE_5__ fmt_in; } ;


 scalar_t__ VIDEO_ES ;
 int block_ChainRelease (int ) ;
 int es_format_Clean (TYPE_5__*) ;
 int free (TYPE_1__*) ;
 int picture_fifo_Delete (int ) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_object_delete (TYPE_2__*) ;

void transcode_encoder_delete( transcode_encoder_t *p_enc )
{
    if( p_enc->p_encoder )
    {
        if( p_enc->p_encoder->fmt_in.i_cat == VIDEO_ES )
        {
            block_ChainRelease( p_enc->p_buffers );
            picture_fifo_Delete( p_enc->pp_pics );
            vlc_mutex_destroy( &p_enc->lock_out );
        }
        es_format_Clean( &p_enc->p_encoder->fmt_in );
        es_format_Clean( &p_enc->p_encoder->fmt_out );
        vlc_object_delete(p_enc->p_encoder);
    }
    free( p_enc );
}
