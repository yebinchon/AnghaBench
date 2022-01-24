#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_4__* sys; } ;
typedef  TYPE_3__ audio_output_t ;
struct TYPE_9__ {scalar_t__ i_write; scalar_t__ i_read; } ;
struct TYPE_12__ {int b_error; scalar_t__ i_samples_written; int /*<<< orphan*/  lock; TYPE_1__ circular; } ;
typedef  TYPE_4__ aout_sys_t ;
struct TYPE_10__ {int /*<<< orphan*/  clazz; } ;
struct TYPE_13__ {TYPE_2__ AudioTimestamp; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flush ; 
 TYPE_5__ jfields ; 
 int /*<<< orphan*/  pause ; 
 int /*<<< orphan*/  play ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7( audio_output_t *p_aout )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;

    FUNC5( &p_sys->lock );

    if( p_sys->b_error || !( env = FUNC3() ) )
        goto bailout;

    /* Android doc:
     * stop(): Stops playing the audio data. When used on an instance created
     * in MODE_STREAM mode, audio will stop playing after the last buffer that
     * was written has been played. For an immediate stop, use pause(),
     * followed by flush() to discard audio data that hasn't been played back
     * yet.
     *
     * flush(): Flushes the audio data currently queued for playback. Any data
     * that has not been played back will be discarded.  No-op if not stopped
     * or paused, or if the track's creation mode is not MODE_STREAM.
     */
    FUNC4( pause );
    if( FUNC2( "pause" ) )
        goto bailout;
    FUNC4( flush );
    p_sys->circular.i_read = p_sys->circular.i_write = 0;

    /* HACK: Before Android 4.4, the head position is not reset to zero and is
     * still moving after a flush or a stop. This prevents to get a precise
     * head position and there is no way to know when it stabilizes. Therefore
     * recreate an AudioTrack object in that case. The AudioTimestamp class was
     * added in API Level 19, so if this class is not found, the Android
     * Version is 4.3 or before */
    if( !jfields.AudioTimestamp.clazz && p_sys->i_samples_written > 0 )
    {
        if( FUNC0( env, p_aout ) != 0 )
        {
            p_sys->b_error = true;
            goto bailout;
        }
    }
    FUNC1( env, p_aout );
    FUNC4( play );
    FUNC2( "play" );

bailout:
    FUNC6( &p_sys->lock );
}