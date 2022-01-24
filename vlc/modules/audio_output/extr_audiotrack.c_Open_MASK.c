#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int /*<<< orphan*/  mute_set; int /*<<< orphan*/  volume_set; int /*<<< orphan*/  device_select; int /*<<< orphan*/  time_get; int /*<<< orphan*/  flush; int /*<<< orphan*/  pause; int /*<<< orphan*/  play; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_8__ {float volume; int mute; int /*<<< orphan*/  thread_cond; int /*<<< orphan*/  aout_cond; int /*<<< orphan*/  lock; int /*<<< orphan*/  at_dev; } ;
typedef  TYPE_2__ aout_sys_t ;
struct TYPE_9__ {int /*<<< orphan*/  name; scalar_t__ id; } ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  AT_DEV_DEFAULT ; 
 int /*<<< orphan*/  DeviceSelect ; 
 int /*<<< orphan*/  Flush ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MuteSet ; 
 int /*<<< orphan*/  Pause ; 
 int /*<<< orphan*/  Play ; 
 int /*<<< orphan*/  Start ; 
 int /*<<< orphan*/  Stop ; 
 int /*<<< orphan*/  TimeGet ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VolumeSet ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_4__* at_devs ; 
 TYPE_2__* FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7( vlc_object_t *obj )
{
    audio_output_t *p_aout = (audio_output_t *) obj;
    aout_sys_t *p_sys;
    JNIEnv *env = FUNC0();

    if( !env || !FUNC1( p_aout, env ) )
        return VLC_EGENERIC;

    p_sys = FUNC3( 1, sizeof (aout_sys_t) );

    if( FUNC4( p_sys == NULL ) )
        return VLC_ENOMEM;

    p_sys->at_dev = AT_DEV_DEFAULT;
    FUNC6(&p_sys->lock);
    FUNC5(&p_sys->aout_cond);
    FUNC5(&p_sys->thread_cond);

    p_aout->sys = p_sys;
    p_aout->start = Start;
    p_aout->stop = Stop;
    p_aout->play = Play;
    p_aout->pause = Pause;
    p_aout->flush = Flush;
    p_aout->time_get = TimeGet;
    p_aout->device_select = DeviceSelect;

    for( unsigned int i = 0; at_devs[i].id; ++i )
        FUNC2(p_aout, at_devs[i].id, at_devs[i].name);

    p_aout->volume_set = VolumeSet;
    p_aout->mute_set = MuteSet;
    p_sys->volume = 1.0f;
    p_sys->mute = false;

    return VLC_SUCCESS;
}