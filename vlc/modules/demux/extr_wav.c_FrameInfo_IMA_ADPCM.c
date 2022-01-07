
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_channels; int i_blockalign; } ;
struct TYPE_5__ {TYPE_1__ audio; } ;
typedef TYPE_2__ es_format_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int FrameInfo_IMA_ADPCM( unsigned int *pi_size, int *pi_samples,
                                const es_format_t *p_fmt )
{
    if( p_fmt->audio.i_channels == 0 )
        return VLC_EGENERIC;

    *pi_samples = 2 * ( p_fmt->audio.i_blockalign -
        4 * p_fmt->audio.i_channels ) / p_fmt->audio.i_channels;
    *pi_size = p_fmt->audio.i_blockalign;

    return VLC_SUCCESS;
}
