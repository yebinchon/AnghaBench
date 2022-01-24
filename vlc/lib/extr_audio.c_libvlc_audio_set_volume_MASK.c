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
typedef  int /*<<< orphan*/  libvlc_media_player_t ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC3 (float,float) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5( libvlc_media_player_t *mp, int volume )
{
    float vol = volume / 100.f;
    if (!FUNC3(vol, 0.f))
    {
        FUNC4( "Volume out of range" );
        return -1;
    }

    int ret = -1;
    audio_output_t *aout = FUNC0( mp );
    if( aout != NULL )
    {
        ret = FUNC2( aout, vol );
        FUNC1(aout);
    }
    return ret;
}