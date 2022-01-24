#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_4__* sys; } ;
typedef  TYPE_3__ audio_output_t ;
struct TYPE_10__ {int /*<<< orphan*/ * p_dsbuffer; } ;
struct TYPE_9__ {float volume; int /*<<< orphan*/  mute; scalar_t__ mb; } ;
struct TYPE_12__ {TYPE_2__ s; TYPE_1__ volume; } ;
typedef  TYPE_4__ aout_sys_t ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 scalar_t__ DSBVOLUME_MAX ; 
 scalar_t__ DSBVOLUME_MIN ; 
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (float,float) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,float) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,float) ; 
 int /*<<< orphan*/  FUNC4 (char*,float) ; 
 float FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (float) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,char*) ; 

__attribute__((used)) static int FUNC9( audio_output_t *p_aout, float volume )
{
    aout_sys_t *sys = p_aout->sys;
    int ret = 0;

    /* Directsound doesn't support amplification, so we use software
       gain if we need it and only for this */
    float gain = volume > 1.f ? volume * volume * volume : 1.f;
    FUNC2( p_aout, gain );

    /* millibels from linear amplification */
    LONG mb = FUNC6( 6000.f * FUNC5( FUNC1( volume, 1.f ) ));

    /* Clamp to allowed DirectSound range */
    FUNC7( DSBVOLUME_MIN < DSBVOLUME_MAX, "DSBVOLUME_* confused" );
    if( mb > DSBVOLUME_MAX )
    {
        mb = DSBVOLUME_MAX;
        ret = -1;
    }
    if( mb <= DSBVOLUME_MIN )
        mb = DSBVOLUME_MIN;

    sys->volume.mb = mb;
    sys->volume.volume = volume;
    if( !sys->volume.mute && sys->s.p_dsbuffer != NULL &&
        FUNC0( sys->s.p_dsbuffer, mb ) != DS_OK )
        return -1;
    /* Convert back to UI volume */
    FUNC3( p_aout, volume );

    if( FUNC8( p_aout, "volume-save" ) )
        FUNC4( "directx-volume", volume );
    return ret;
}