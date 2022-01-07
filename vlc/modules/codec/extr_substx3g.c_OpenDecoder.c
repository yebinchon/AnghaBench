
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {int i_features; int i_style_flags; } ;
typedef TYPE_3__ text_style_t ;
struct TYPE_8__ {int i_codec; } ;
struct TYPE_9__ {scalar_t__ i_codec; } ;
struct TYPE_11__ {TYPE_1__ fmt_out; TYPE_2__ fmt_in; TYPE_3__* p_sys; int pf_decode; } ;
typedef TYPE_4__ decoder_t ;


 int Decode ;
 int ParseExtradataTextMedia (TYPE_4__*) ;
 int ParseExtradataTx3g (TYPE_4__*) ;
 int STYLE_BACKGROUND ;
 int STYLE_HAS_FLAGS ;
 int STYLE_NO_DEFAULTS ;
 scalar_t__ VLC_CODEC_QTXT ;
 int VLC_CODEC_TEXT ;
 scalar_t__ VLC_CODEC_TX3G ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_3__* text_style_Create (int ) ;

__attribute__((used)) static int OpenDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *) p_this;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_TX3G &&
        p_dec->fmt_in.i_codec != VLC_CODEC_QTXT )
        return VLC_EGENERIC;

    p_dec->pf_decode = Decode;

    p_dec->p_sys = text_style_Create( STYLE_NO_DEFAULTS );
    if( !p_dec->p_sys )
        return VLC_ENOMEM;

    text_style_t *p_default_style = p_dec->p_sys;
    p_default_style->i_style_flags |= STYLE_BACKGROUND;
    p_default_style->i_features |= STYLE_HAS_FLAGS;

    if( p_dec->fmt_in.i_codec == VLC_CODEC_TX3G )
        ParseExtradataTx3g( p_dec );
    else
        ParseExtradataTextMedia( p_dec );

    p_dec->fmt_out.i_codec = VLC_CODEC_TEXT;

    return VLC_SUCCESS;
}
