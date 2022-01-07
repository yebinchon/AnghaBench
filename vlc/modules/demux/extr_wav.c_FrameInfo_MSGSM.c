
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_blockalign; int i_rate; } ;
struct TYPE_5__ {int i_bitrate; TYPE_1__ audio; } ;
typedef TYPE_2__ es_format_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int FrameInfo_MSGSM( unsigned int *pi_size, int *pi_samples,
                            const es_format_t *p_fmt )
{
    if( p_fmt->i_bitrate <= 0 )
        return VLC_EGENERIC;

    *pi_samples = ( p_fmt->audio.i_blockalign * p_fmt->audio.i_rate * 8)
                    / p_fmt->i_bitrate;
    *pi_size = p_fmt->audio.i_blockalign;

    return VLC_SUCCESS;
}
