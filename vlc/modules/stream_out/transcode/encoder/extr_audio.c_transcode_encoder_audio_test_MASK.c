#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
struct TYPE_20__ {char* psz_name; int /*<<< orphan*/  i_codec; int /*<<< orphan*/  p_config_chain; } ;
typedef  TYPE_1__ transcode_encoder_config_t ;
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_23__ {int i_channels; int /*<<< orphan*/  i_format; int /*<<< orphan*/  i_physical_channels; } ;
struct TYPE_21__ {TYPE_4__ audio; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_19__ {int /*<<< orphan*/  i_codec; TYPE_4__ audio; } ;
struct TYPE_22__ {TYPE_12__ fmt_out; TYPE_12__ fmt_in; int /*<<< orphan*/  p_cfg; } ;
typedef  TYPE_3__ encoder_t ;
typedef  TYPE_4__ audio_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOUT_CHANS_STEREO ; 
 int /*<<< orphan*/  AUDIO_ES ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

int FUNC9( vlc_object_t *p_obj,
                                  const transcode_encoder_config_t *p_cfg,
                                  const es_format_t *p_dec_out,
                                  vlc_fourcc_t i_codec_in,
                                  es_format_t *p_enc_wanted_in )
{
    encoder_t *p_encoder = FUNC7( p_obj );
    if( !p_encoder )
        return VLC_EGENERIC;

    p_encoder->p_cfg = p_cfg->p_config_chain;

    FUNC3( &p_encoder->fmt_in, AUDIO_ES, i_codec_in );
    p_encoder->fmt_in.audio = p_dec_out->audio;
    FUNC3( &p_encoder->fmt_out, AUDIO_ES, p_cfg->i_codec );

    audio_format_t *p_afmt_out = &p_encoder->fmt_out.audio;

    if( FUNC0( p_cfg, &p_dec_out->audio, p_encoder, false ) )
    {
        FUNC1( &p_encoder->fmt_in );
        FUNC1( &p_encoder->fmt_out );
        FUNC8(p_encoder);
        return VLC_EGENERIC;
    }

    p_encoder->fmt_in.audio.i_format = i_codec_in;

    if( p_afmt_out->i_channels == 0 )
    {
        p_afmt_out->i_channels = 2;
        p_afmt_out->i_physical_channels = AOUT_CHANS_STEREO;
    }

    module_t *p_module = FUNC4( p_encoder, "encoder", p_cfg->psz_name, true );
    if( !p_module )
    {
        FUNC6( p_obj, "cannot find audio encoder (module:%s fourcc:%4.4s). "
                           "Take a look few lines earlier to see possible reason.",
                           p_cfg->psz_name ? p_cfg->psz_name : "any",
                           (char *)&p_cfg->i_codec );
    }
    else
    {
        /* Close the encoder.
         * We'll open it only when we have the first frame. */
        FUNC5( p_encoder, p_module );
    }

    p_encoder->fmt_in.audio.i_format = p_encoder->fmt_in.i_codec;

    /* copy our requested format */
    FUNC2( p_enc_wanted_in, &p_encoder->fmt_in );

    FUNC1( &p_encoder->fmt_in );
    FUNC1( &p_encoder->fmt_out );

    FUNC8(p_encoder);

    return p_module != NULL ? VLC_SUCCESS : VLC_EGENERIC;
}