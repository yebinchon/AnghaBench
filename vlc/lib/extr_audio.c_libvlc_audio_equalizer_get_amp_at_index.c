
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* f_amp; } ;
typedef TYPE_1__ libvlc_equalizer_t ;


 unsigned int EQZ_BANDS_MAX ;
 float nanf (char*) ;

float libvlc_audio_equalizer_get_amp_at_index( libvlc_equalizer_t *p_equalizer, unsigned u_band )
{
    if ( u_band >= EQZ_BANDS_MAX )
        return nanf("");

    return p_equalizer->f_amp[ u_band ];
}
