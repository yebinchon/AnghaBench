
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float f_preamp; float* f_amp; } ;
typedef TYPE_1__ libvlc_equalizer_t ;


 unsigned int EQZ_BANDS_MAX ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;

libvlc_equalizer_t *libvlc_audio_equalizer_new( void )
{
    libvlc_equalizer_t *p_equalizer;
    p_equalizer = malloc( sizeof( *p_equalizer ) );
    if ( unlikely( p_equalizer == ((void*)0) ) )
        return ((void*)0);

    p_equalizer->f_preamp = 0.f;
    for ( unsigned i = 0; i < EQZ_BANDS_MAX; i++ )
        p_equalizer->f_amp[ i ] = 0.f;

    return p_equalizer;
}
