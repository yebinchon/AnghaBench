
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_19__ {int b_abort; int b_threaded; TYPE_11__* p_encoder; int picture_pool_has_room; int cond; int thread; int * p_buffers; } ;
typedef TYPE_6__ transcode_encoder_t ;
struct TYPE_17__ {scalar_t__ i_count; int i_priority; int pool_size; } ;
struct TYPE_18__ {TYPE_4__ threads; } ;
struct TYPE_20__ {TYPE_5__ video; int psz_name; int p_config_chain; } ;
typedef TYPE_7__ transcode_encoder_config_t ;
struct TYPE_16__ {int i_codec; } ;
struct TYPE_14__ {int i_chroma; } ;
struct TYPE_15__ {int i_codec; TYPE_1__ video; } ;
struct TYPE_13__ {scalar_t__ i_threads; int * p_module; TYPE_3__ fmt_out; TYPE_2__ fmt_in; int p_cfg; } ;


 int EncoderThread ;
 int VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int * module_need (TYPE_11__*,char*,int ,int) ;
 int module_unneed (TYPE_11__*,int *) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_6__*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 int vlc_fourcc_GetCodec (int ,int ) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_init (int *,int ) ;

int transcode_encoder_video_open( transcode_encoder_t *p_enc,
                                   const transcode_encoder_config_t *p_cfg )
{
    p_enc->p_encoder->i_threads = p_cfg->video.threads.i_count;
    p_enc->p_encoder->p_cfg = p_cfg->p_config_chain;

    p_enc->p_encoder->p_module =
        module_need( p_enc->p_encoder, "encoder", p_cfg->psz_name, 1 );
    if( !p_enc->p_encoder->p_module )
        return VLC_EGENERIC;

    p_enc->p_encoder->fmt_in.video.i_chroma = p_enc->p_encoder->fmt_in.i_codec;


    p_enc->p_encoder->fmt_out.i_codec =
        vlc_fourcc_GetCodec( VIDEO_ES, p_enc->p_encoder->fmt_out.i_codec );

    vlc_sem_init( &p_enc->picture_pool_has_room, p_cfg->video.threads.pool_size );
    vlc_cond_init( &p_enc->cond );
    p_enc->p_buffers = ((void*)0);
    p_enc->b_abort = 0;

    if( p_cfg->video.threads.i_count > 0 )
    {
        if( vlc_clone( &p_enc->thread, EncoderThread, p_enc, p_cfg->video.threads.i_priority ) )
        {
            vlc_cond_destroy( &p_enc->cond );
            vlc_sem_destroy( &p_enc->picture_pool_has_room );
            module_unneed( p_enc->p_encoder, p_enc->p_encoder->p_module );
            p_enc->p_encoder->p_module = ((void*)0);
            return VLC_EGENERIC;
        }
        p_enc->b_threaded = 1;
    }

    return VLC_SUCCESS;
}
