
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NB_PRESETS ;

unsigned libvlc_audio_equalizer_get_preset_count( void )
{
    return NB_PRESETS;
}
