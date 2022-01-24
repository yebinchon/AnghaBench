#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int WAVE_FORMAT_PCM ; 

__attribute__((used)) static int FUNC2( int i_format, const uint8_t *p_head )
{
    if ( i_format == WAVE_FORMAT_PCM )
    {
        if( FUNC1( p_head /* nChannels */ ) != 2 )
            return VLC_EGENERIC;
        if( FUNC0( p_head + 2 /* nSamplesPerSec */ ) != 44100 )
            return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}