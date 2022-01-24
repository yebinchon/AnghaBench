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
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

void FUNC8( libvlc_media_player_t *mp,
                                     const char *module, const char *devid )
{
    if( devid == NULL )
        return;

    if( module != NULL )
    {
        char *cfg_name;

        if( FUNC3( &cfg_name, "%s-audio-device", module ) == -1 )
            return;

        if( !FUNC7( mp, cfg_name ) )
            /* Don't recreate the same variable over and over and over... */
            FUNC5( mp, cfg_name, VLC_VAR_STRING );
        FUNC6( mp, cfg_name, devid );
        FUNC4( cfg_name );
        return;
    }

    audio_output_t *aout = FUNC0( mp );
    if( aout == NULL )
        return;

    FUNC1( aout, devid );
    FUNC2(aout);
}