
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* psz_string; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
struct TYPE_9__ {int rem; int quot; } ;
typedef TYPE_2__ lldiv_t ;
struct TYPE_10__ {float* f_amp; int f_preamp; int psz_name; } ;
typedef TYPE_3__ eqz_preset_t ;


 unsigned int EQZ_BANDS_MAX ;
 unsigned int NB_PRESETS ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int asprintf (char**,char*,char*,int ,int ) ;
 TYPE_3__* eqz_preset_10b ;
 int free (char*) ;
 TYPE_2__ lldiv (int ,int) ;
 int lroundf (float) ;
 int msg_Err (int *,char*,char const*) ;
 int msg_Info (int *,char*,...) ;
 int strcasecmp (int ,char const*) ;
 scalar_t__ unlikely (int ) ;
 int var_SetFloat (int *,char*,int ) ;
 int var_SetString (int *,char*,char*) ;

__attribute__((used)) static int PresetCallback( vlc_object_t *p_aout, char const *psz_cmd,
                         vlc_value_t oldval, vlc_value_t newval, void *p_data )
{
    const eqz_preset_t *preset = ((void*)0);
    const char *psz_preset = newval.psz_string;

    for( unsigned i = 0; i < NB_PRESETS; i++ )
        if( !strcasecmp( eqz_preset_10b[i].psz_name, psz_preset ) )
        {
            preset = eqz_preset_10b + i;
            break;
        }

    if( preset == ((void*)0) )
    {
        msg_Err( p_aout, "equalizer preset '%s' not found", psz_preset );
        msg_Info( p_aout, "full list:" );
        for( unsigned i = 0; i < NB_PRESETS; i++ )
             msg_Info( p_aout, "  - '%s'", eqz_preset_10b[i].psz_name );
        return VLC_EGENERIC;
    }

    char *bands = ((void*)0);

    for( unsigned i = 0; i < EQZ_BANDS_MAX; i++ )
    {
        char *psz;

        lldiv_t d = lldiv( lroundf(preset->f_amp[i] * 10000000.f), 10000000 );

        if( asprintf( &psz, "%s %lld.%07llu", i ? bands : "",
                      d.quot, d.rem ) == -1 )
            psz = ((void*)0);

        free( bands );
        if( unlikely(psz == ((void*)0)) )
            return VLC_ENOMEM;
        bands = psz;
    }

    var_SetFloat( p_aout, "equalizer-preamp", preset->f_preamp );
    var_SetString( p_aout, "equalizer-bands", bands );
    free( bands );
    (void) psz_cmd; (void) oldval; (void) p_data;
    return VLC_SUCCESS;
}
