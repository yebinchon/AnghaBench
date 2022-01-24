#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ audio_output_t ;
struct TYPE_9__ {int mute; float volume; int /*<<< orphan*/ * p_audiotrack; int /*<<< orphan*/  b_error; } ;
typedef  TYPE_3__ aout_sys_t ;
struct TYPE_7__ {scalar_t__ setVolume; } ;
struct TYPE_10__ {TYPE_1__ AudioTrack; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 TYPE_4__ jfields ; 
 int /*<<< orphan*/  setStereoVolume ; 
 int /*<<< orphan*/  setVolume ; 

__attribute__((used)) static int
FUNC4( audio_output_t *p_aout, bool mute )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;
    p_sys->mute = mute;

    if( !p_sys->b_error && p_sys->p_audiotrack != NULL && ( env = FUNC1() ) )
    {
        if( jfields.AudioTrack.setVolume )
        {
            FUNC2( setVolume, mute ? 0.0f : p_sys->volume );
            FUNC0( "setVolume" );
        } else
        {
            FUNC2( setStereoVolume, mute ? 0.0f : p_sys->volume, mute ? 0.0f : p_sys->volume );
            FUNC0( "setStereoVolume" );
        }
    }
    FUNC3(p_aout, mute);
    return 0;
}