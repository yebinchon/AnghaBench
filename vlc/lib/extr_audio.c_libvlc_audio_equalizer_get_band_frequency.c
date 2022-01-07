
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EQZ_BANDS_MAX ;
 float* f_iso_frequency_table_10b ;

float libvlc_audio_equalizer_get_band_frequency( unsigned u_index )
{
    if ( u_index >= EQZ_BANDS_MAX )
        return -1.f;

    return f_iso_frequency_table_10b[ u_index ];
}
