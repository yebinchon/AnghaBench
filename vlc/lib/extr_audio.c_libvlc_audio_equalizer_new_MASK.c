#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float f_preamp; float* f_amp; } ;
typedef  TYPE_1__ libvlc_equalizer_t ;

/* Variables and functions */
 unsigned int EQZ_BANDS_MAX ; 
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

libvlc_equalizer_t *FUNC2( void )
{
    libvlc_equalizer_t *p_equalizer;
    p_equalizer = FUNC0( sizeof( *p_equalizer ) );
    if ( FUNC1( p_equalizer == NULL ) )
        return NULL;

    p_equalizer->f_preamp = 0.f;
    for ( unsigned i = 0; i < EQZ_BANDS_MAX; i++ )
        p_equalizer->f_amp[ i ] = 0.f;

    return p_equalizer;
}