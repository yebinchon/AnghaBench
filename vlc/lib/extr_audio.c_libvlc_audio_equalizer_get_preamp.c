
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float f_preamp; } ;
typedef TYPE_1__ libvlc_equalizer_t ;



float libvlc_audio_equalizer_get_preamp( libvlc_equalizer_t *p_equalizer )
{
    return p_equalizer->f_preamp;
}
