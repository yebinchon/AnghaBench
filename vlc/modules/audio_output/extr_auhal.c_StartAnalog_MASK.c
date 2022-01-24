#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  audio_sample_format_t ;
struct TYPE_12__ {int /*<<< orphan*/  headphones; } ;
struct TYPE_13__ {TYPE_1__ current_sink_info; TYPE_3__* sys; } ;
typedef  TYPE_2__ audio_output_t ;
struct TYPE_14__ {int /*<<< orphan*/ * au_unit; int /*<<< orphan*/  b_mute; int /*<<< orphan*/  f_volume; int /*<<< orphan*/  i_selected_dev; } ;
typedef  TYPE_3__ aout_sys_t ;
typedef  int /*<<< orphan*/  UInt32 ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/  AudioObjectID ;
typedef  int /*<<< orphan*/  AudioChannelLayout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kAudioDevicePropertyPreferredChannelLayout ; 
 int /*<<< orphan*/  kAudioOutputUnitProperty_CurrentDevice ; 
 int /*<<< orphan*/  kAudioUnitScope_Global ; 
 int /*<<< orphan*/  kAudioUnitScope_Output ; 
 int /*<<< orphan*/  kAudioUnitSubType_HALOutput ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ noErr ; 

__attribute__((used)) static int
FUNC17(audio_output_t *p_aout, audio_sample_format_t *fmt)
{
    aout_sys_t                  *p_sys = p_aout->sys;
    OSStatus                    err = noErr;
    UInt32                      i_param_size;
    AudioChannelLayout          *layout = NULL;

    if (FUNC9(fmt) == 0)
        return VLC_EGENERIC;

    p_sys->au_unit = FUNC11(p_aout, kAudioUnitSubType_HALOutput);
    if (p_sys->au_unit == NULL)
        return VLC_EGENERIC;

    p_aout->current_sink_info.headphones = FUNC1(p_aout, p_sys->i_selected_dev);

    /* Set the device we will use for this output unit */
    err = FUNC5(p_sys->au_unit,
                               kAudioOutputUnitProperty_CurrentDevice,
                               kAudioUnitScope_Global, 0,
                               &p_sys->i_selected_dev, sizeof(AudioObjectID));

    if (err != noErr)
    {
        FUNC13("cannot select audio output device, PCM output failed");
        goto error;
    }

    /* Get the channel layout of the device side of the unit (vlc -> unit ->
     * device) */
    err = FUNC4(p_sys->au_unit,
                                   kAudioDevicePropertyPreferredChannelLayout,
                                   kAudioUnitScope_Output, 0, &i_param_size,
                                   NULL);
    if (err == noErr)
    {
        layout = (AudioChannelLayout *)FUNC16(i_param_size);
        if (layout == NULL)
            goto error;

        OSStatus err =
            FUNC3(p_sys->au_unit,
                                 kAudioDevicePropertyPreferredChannelLayout,
                                 kAudioUnitScope_Output, 0, layout,
                                 &i_param_size);
        if (err != noErr)
            goto error;
    }
    else
        FUNC14("device driver does not support "
                   "kAudioDevicePropertyPreferredChannelLayout - using stereo");

    /* Do the last VLC aout setups */
    bool warn_configuration;
    int ret = FUNC10(p_aout, p_sys->au_unit, fmt, layout, 0,
                            &warn_configuration);
    if (ret != VLC_SUCCESS)
        goto error;

    err = FUNC2(p_sys->au_unit);
    if (err != noErr)
    {
        FUNC13("AudioUnitStart failed");
        FUNC12(p_aout, p_sys->au_unit);
        goto error;
    }

    /* Set volume for output unit */
    FUNC7(p_aout, p_sys->f_volume);
    FUNC6(p_aout, p_sys->b_mute);

    FUNC15(layout);

    if (warn_configuration)
        FUNC8(p_aout);

    return VLC_SUCCESS;
error:
    FUNC0(p_sys->au_unit);
    FUNC15(layout);
    return VLC_EGENERIC;
}