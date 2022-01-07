
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {scalar_t__ i_codec; scalar_t__ i_extra; } ;
struct TYPE_10__ {scalar_t__ i_codec; } ;
struct TYPE_12__ {TYPE_2__ fmt_in; TYPE_1__ fmt_out; int pf_decode; TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_13__ {int i_align; int pp_images; int i_images; int pp_ssa_styles; int i_ssa_styles; } ;
typedef TYPE_4__ decoder_sys_t ;


 int DecodeBlock ;
 int ParseImageAttachments (TYPE_3__*) ;
 int ParseUSFHeader (TYPE_3__*) ;
 int TAB_INIT (int ,int ) ;
 scalar_t__ VLC_CODEC_USF ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_4__* calloc (int,int) ;
 scalar_t__ var_CreateGetBool (TYPE_3__*,char*) ;
 int var_CreateGetInteger (TYPE_3__*,char*) ;

__attribute__((used)) static int OpenDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_USF )
        return VLC_EGENERIC;


    if( ( p_dec->p_sys = p_sys = calloc(1, sizeof(decoder_sys_t)) ) == ((void*)0) )
        return VLC_ENOMEM;

    p_dec->pf_decode = DecodeBlock;
    p_dec->fmt_out.i_codec = 0;


    TAB_INIT( p_sys->i_ssa_styles, p_sys->pp_ssa_styles );
    TAB_INIT( p_sys->i_images, p_sys->pp_images );



    p_sys->i_align = var_CreateGetInteger( p_dec, "subsdec-align" );

    ParseImageAttachments( p_dec );

    if( var_CreateGetBool( p_dec, "subsdec-formatted" ) )
    {
        if( p_dec->fmt_in.i_extra > 0 )
            ParseUSFHeader( p_dec );
    }

    return VLC_SUCCESS;
}
