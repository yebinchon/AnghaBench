
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_cat; } ;
struct decoder_owner {int error; int p_resource; int * p_aout; TYPE_1__ fmt; int dec; } ;
typedef int es_format_t ;
typedef enum reload { ____Placeholder_reload } reload ;
typedef int decoder_t ;
typedef int audio_output_t ;


 scalar_t__ AUDIO_ES ;
 scalar_t__ LoadDecoder (int *,int,int *) ;
 int RELOAD_DECODER_AOUT ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int aout_DecDelete (int *) ;
 int assert (int) ;
 int decoder_Clean (int *) ;
 int es_format_Clean (int *) ;
 scalar_t__ es_format_Copy (int *,int const*) ;
 int input_resource_PutAout (int ,int *) ;

__attribute__((used)) static int DecoderThread_Reload( struct decoder_owner *p_owner, bool b_packetizer,
                                 const es_format_t *restrict p_fmt, enum reload reload )
{

    decoder_t *p_dec = &p_owner->dec;
    es_format_t fmt_in;
    if( es_format_Copy( &fmt_in, p_fmt ) != VLC_SUCCESS )
    {
        p_owner->error = 1;
        return VLC_EGENERIC;
    }


    decoder_Clean( p_dec );
    p_owner->error = 0;

    if( reload == RELOAD_DECODER_AOUT )
    {
        assert( p_owner->fmt.i_cat == AUDIO_ES );
        audio_output_t *p_aout = p_owner->p_aout;

        p_owner->p_aout = ((void*)0);
        if( p_aout )
        {
            aout_DecDelete( p_aout );
            input_resource_PutAout( p_owner->p_resource, p_aout );
        }
    }

    if( LoadDecoder( p_dec, b_packetizer, &fmt_in ) )
    {
        p_owner->error = 1;
        es_format_Clean( &fmt_in );
        return VLC_EGENERIC;
    }
    es_format_Clean( &fmt_in );
    return VLC_SUCCESS;
}
