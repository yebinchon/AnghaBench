
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int player; } ;
typedef TYPE_1__ libvlc_media_player_t ;
struct TYPE_11__ {double* f_amp; int f_preamp; } ;
typedef TYPE_2__ libvlc_equalizer_t ;
typedef int bands ;
typedef TYPE_1__ audio_output_t ;


 unsigned int EQZ_BANDS_MAX ;
 unsigned int EQZ_BAND_VALUE_SIZE ;
 int aout_Release (TYPE_1__*) ;
 scalar_t__ snprintf (char*,int,char*,double) ;
 scalar_t__ unlikely (int) ;
 int var_SetFloat (TYPE_1__*,char*,int ) ;
 int var_SetString (TYPE_1__*,char*,char*) ;
 TYPE_1__* vlc_player_aout_Hold (int ) ;

int libvlc_media_player_set_equalizer( libvlc_media_player_t *p_mi, libvlc_equalizer_t *p_equalizer )
{
    char bands[EQZ_BANDS_MAX * EQZ_BAND_VALUE_SIZE + 1];

    if( p_equalizer != ((void*)0) )
    {
        for( unsigned i = 0, c = 0; i < EQZ_BANDS_MAX; i++ )
        {
            c += snprintf( bands + c, sizeof(bands) - c, " %.07f",
                          p_equalizer->f_amp[i] );
            if( unlikely(c >= sizeof(bands)) )
                return -1;
        }

        var_SetFloat( p_mi, "equalizer-preamp", p_equalizer->f_preamp );
        var_SetString( p_mi, "equalizer-bands", bands );
    }
    var_SetString( p_mi, "audio-filter", p_equalizer ? "equalizer" : "" );

    audio_output_t *p_aout = vlc_player_aout_Hold( p_mi->player );
    if( p_aout != ((void*)0) )
    {
        if( p_equalizer != ((void*)0) )
        {
            var_SetFloat( p_aout, "equalizer-preamp", p_equalizer->f_preamp );
            var_SetString( p_aout, "equalizer-bands", bands );
        }

        var_SetString( p_aout, "audio-filter", p_equalizer ? "equalizer" : "" );
        aout_Release(p_aout);
    }

    return 0;
}
