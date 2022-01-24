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
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC4( libvlc_media_player_t *mp, int channel )
{
    audio_output_t *p_aout = FUNC0( mp );
    int ret = 0;

    if( !p_aout )
        return -1;

    if( FUNC3( p_aout, "stereo-mode", channel ) < 0 )
    {
        FUNC2( "Audio channel out of range" );
        ret = -1;
    }
    FUNC1(p_aout);
    return ret;
}