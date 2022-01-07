
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* f_amp; } ;
typedef TYPE_1__ libvlc_equalizer_t ;


 unsigned int EQZ_BANDS_MAX ;
 scalar_t__ isnan (float) ;

int libvlc_audio_equalizer_set_amp_at_index( libvlc_equalizer_t *p_equalizer, float f_amp, unsigned u_band )
{
    if( u_band >= EQZ_BANDS_MAX || isnan(f_amp) )
        return -1;


    if( f_amp < -20.f )
        f_amp = -20.f;
    else if( f_amp > 20.f )
        f_amp = 20.f;

    p_equalizer->f_amp[ u_band ] = f_amp;
    return 0;
}
