
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;


typedef int vlc_object_t ;
typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_22__ {int i_width; int i_height; int i_visible_width; int i_visible_height; scalar_t__ i_chroma; int i_frame_rate_base; int i_frame_rate; } ;
typedef TYPE_3__ video_format_t ;
struct TYPE_20__ {int i_count; } ;
struct TYPE_21__ {int i_width; int i_height; int i_bitrate; TYPE_1__ threads; } ;
struct TYPE_23__ {char* psz_name; scalar_t__ i_codec; TYPE_2__ video; int p_config_chain; } ;
typedef TYPE_4__ transcode_encoder_config_t ;
typedef int module_t ;
struct TYPE_24__ {TYPE_3__ video; } ;
typedef TYPE_5__ es_format_t ;
struct TYPE_19__ {scalar_t__ i_codec; TYPE_3__ video; int i_bitrate; } ;
struct TYPE_25__ {TYPE_15__ fmt_out; TYPE_15__ fmt_in; int p_cfg; int i_threads; } ;
typedef TYPE_6__ encoder_t ;


 int ENC_FRAMERATE ;
 int ENC_FRAMERATE_BASE ;
 int FIRSTVALID (int,int,int) ;
 int VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int es_format_Clean (TYPE_15__*) ;
 int es_format_Copy (TYPE_5__*,TYPE_15__*) ;
 int es_format_Init (TYPE_15__*,int ,scalar_t__) ;
 scalar_t__ likely (int) ;
 int * module_need (TYPE_6__*,char*,char*,int) ;
 int module_unneed (TYPE_6__*,int *) ;
 int msg_Err (int *,char*,char*,char*) ;
 TYPE_6__* sout_EncoderCreate (int *) ;
 int video_format_FixRgb (TYPE_3__*) ;
 int vlc_object_delete (TYPE_6__*) ;

int transcode_encoder_video_test( vlc_object_t *p_obj,
                                  const transcode_encoder_config_t *p_cfg,
                                  const es_format_t *p_dec_fmtin,
                                  vlc_fourcc_t i_codec_in,
                                  es_format_t *p_enc_wanted_in )
{
    encoder_t *p_encoder = sout_EncoderCreate( p_obj );
    if( !p_encoder )
        return VLC_EGENERIC;

    p_encoder->i_threads = p_cfg->video.threads.i_count;
    p_encoder->p_cfg = p_cfg->p_config_chain;

    es_format_Init( &p_encoder->fmt_in, VIDEO_ES, i_codec_in );
    es_format_Init( &p_encoder->fmt_out, VIDEO_ES, p_cfg->i_codec );

    const video_format_t *p_dec_in = &p_dec_fmtin->video;
    video_format_t *p_vfmt_in = &p_encoder->fmt_in.video;
    video_format_t *p_vfmt_out = &p_encoder->fmt_out.video;


    p_vfmt_out->i_width = p_cfg->video.i_width & ~1;
    p_vfmt_out->i_height = p_cfg->video.i_height & ~1;
    p_encoder->fmt_out.i_bitrate = p_cfg->video.i_bitrate;




    p_vfmt_in->i_chroma = i_codec_in;
    p_vfmt_in->i_width = FIRSTVALID( p_vfmt_out->i_width, p_dec_in->i_width, 16 ) & ~1;
    p_vfmt_in->i_height = FIRSTVALID( p_vfmt_out->i_height, p_dec_in->i_height, 16 ) & ~1;
    p_vfmt_in->i_visible_width = FIRSTVALID( p_vfmt_out->i_visible_width,
                                             p_dec_in->i_visible_width, p_vfmt_in->i_width ) & ~1;
    p_vfmt_in->i_visible_height = FIRSTVALID( p_vfmt_out->i_visible_height,
                                              p_dec_in->i_visible_height, p_vfmt_in->i_height ) & ~1;
    p_vfmt_in->i_frame_rate = ENC_FRAMERATE;
    p_vfmt_in->i_frame_rate_base = ENC_FRAMERATE_BASE;

    module_t *p_module = module_need( p_encoder, "encoder", p_cfg->psz_name, 1 );
    if( !p_module )
    {
        msg_Err( p_obj, "cannot find video encoder (module:%s fourcc:%4.4s). "
                           "Take a look few lines earlier to see possible reason.",
                 p_cfg->psz_name ? p_cfg->psz_name : "any",
                 (char *)&p_cfg->i_codec );
    }
    else
    {


        module_unneed( p_encoder, p_module );
    }

    if( likely(!p_encoder->fmt_in.video.i_chroma) )
        p_encoder->fmt_in.video.i_chroma = p_encoder->fmt_in.i_codec;


    es_format_Copy( p_enc_wanted_in, &p_encoder->fmt_in );
    video_format_FixRgb( &p_enc_wanted_in->video );

    es_format_Clean( &p_encoder->fmt_in );
    es_format_Clean( &p_encoder->fmt_out );

    vlc_object_delete(p_encoder);

    return p_module != ((void*)0) ? VLC_SUCCESS : VLC_EGENERIC;
}
