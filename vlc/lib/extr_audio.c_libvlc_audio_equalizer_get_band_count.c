
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EQZ_BANDS_MAX ;

unsigned libvlc_audio_equalizer_get_band_count( void )
{
    return EQZ_BANDS_MAX;
}
