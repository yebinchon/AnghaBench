
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float f_preamp; } ;
typedef TYPE_1__ libvlc_equalizer_t ;


 scalar_t__ isnan (float) ;

int libvlc_audio_equalizer_set_preamp( libvlc_equalizer_t *p_equalizer, float f_preamp )
{
    if( isnan(f_preamp) )
        return -1;
    if( f_preamp < -20.f )
        f_preamp = -20.f;
    else if( f_preamp > 20.f )
        f_preamp = 20.f;

    p_equalizer->f_preamp = f_preamp;
    return 0;
}
