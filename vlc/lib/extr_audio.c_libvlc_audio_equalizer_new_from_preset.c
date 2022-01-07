
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * f_amp; int f_preamp; } ;
typedef TYPE_1__ libvlc_equalizer_t ;
struct TYPE_6__ {int * f_amp; int f_preamp; } ;


 unsigned int EQZ_BANDS_MAX ;
 unsigned int NB_PRESETS ;
 TYPE_4__* eqz_preset_10b ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;

libvlc_equalizer_t *libvlc_audio_equalizer_new_from_preset( unsigned u_index )
{
    libvlc_equalizer_t *p_equalizer;

    if ( u_index >= NB_PRESETS )
        return ((void*)0);

    p_equalizer = malloc( sizeof( *p_equalizer ) );
    if ( unlikely( p_equalizer == ((void*)0) ) )
        return ((void*)0);

    p_equalizer->f_preamp = eqz_preset_10b[ u_index ].f_preamp;

    for ( unsigned i = 0; i < EQZ_BANDS_MAX; i++ )
        p_equalizer->f_amp[ i ] = eqz_preset_10b[ u_index ].f_amp[ i ];

    return p_equalizer;
}
