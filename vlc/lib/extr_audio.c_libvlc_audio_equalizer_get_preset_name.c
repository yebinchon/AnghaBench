
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NB_PRESETS ;
 char const** preset_list_text ;

const char *libvlc_audio_equalizer_get_preset_name( unsigned u_index )
{
    if ( u_index >= NB_PRESETS )
        return ((void*)0);

    return preset_list_text[ u_index ];
}
