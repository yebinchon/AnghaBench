
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int audio_sample_format_t ;
struct TYPE_12__ {int headphones; } ;
struct TYPE_13__ {TYPE_1__ current_sink_info; TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_14__ {int * au_unit; int b_mute; int f_volume; int i_selected_dev; } ;
typedef TYPE_3__ aout_sys_t ;
typedef int UInt32 ;
typedef scalar_t__ OSStatus ;
typedef int AudioObjectID ;
typedef int AudioChannelLayout ;


 int AudioComponentInstanceDispose (int *) ;
 int AudioDeviceIsAHeadphone (TYPE_2__*,int ) ;
 scalar_t__ AudioOutputUnitStart (int *) ;
 scalar_t__ AudioUnitGetProperty (int *,int ,int ,int ,int *,int *) ;
 scalar_t__ AudioUnitGetPropertyInfo (int *,int ,int ,int ,int *,int *) ;
 scalar_t__ AudioUnitSetProperty (int *,int ,int ,int ,int *,int) ;
 int MuteSet (TYPE_2__*,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VolumeSet (TYPE_2__*,int ) ;
 int WarnConfiguration (TYPE_2__*) ;
 scalar_t__ aout_FormatNbChannels (int *) ;
 int au_Initialize (TYPE_2__*,int *,int *,int *,int ,int*) ;
 int * au_NewOutputInstance (TYPE_2__*,int ) ;
 int au_Uninitialize (TYPE_2__*,int *) ;
 int ca_LogErr (char*) ;
 int ca_LogWarn (char*) ;
 int free (int *) ;
 int kAudioDevicePropertyPreferredChannelLayout ;
 int kAudioOutputUnitProperty_CurrentDevice ;
 int kAudioUnitScope_Global ;
 int kAudioUnitScope_Output ;
 int kAudioUnitSubType_HALOutput ;
 scalar_t__ malloc (int ) ;
 scalar_t__ noErr ;

__attribute__((used)) static int
StartAnalog(audio_output_t *p_aout, audio_sample_format_t *fmt)
{
    aout_sys_t *p_sys = p_aout->sys;
    OSStatus err = noErr;
    UInt32 i_param_size;
    AudioChannelLayout *layout = ((void*)0);

    if (aout_FormatNbChannels(fmt) == 0)
        return VLC_EGENERIC;

    p_sys->au_unit = au_NewOutputInstance(p_aout, kAudioUnitSubType_HALOutput);
    if (p_sys->au_unit == ((void*)0))
        return VLC_EGENERIC;

    p_aout->current_sink_info.headphones = AudioDeviceIsAHeadphone(p_aout, p_sys->i_selected_dev);


    err = AudioUnitSetProperty(p_sys->au_unit,
                               kAudioOutputUnitProperty_CurrentDevice,
                               kAudioUnitScope_Global, 0,
                               &p_sys->i_selected_dev, sizeof(AudioObjectID));

    if (err != noErr)
    {
        ca_LogErr("cannot select audio output device, PCM output failed");
        goto error;
    }



    err = AudioUnitGetPropertyInfo(p_sys->au_unit,
                                   kAudioDevicePropertyPreferredChannelLayout,
                                   kAudioUnitScope_Output, 0, &i_param_size,
                                   ((void*)0));
    if (err == noErr)
    {
        layout = (AudioChannelLayout *)malloc(i_param_size);
        if (layout == ((void*)0))
            goto error;

        OSStatus err =
            AudioUnitGetProperty(p_sys->au_unit,
                                 kAudioDevicePropertyPreferredChannelLayout,
                                 kAudioUnitScope_Output, 0, layout,
                                 &i_param_size);
        if (err != noErr)
            goto error;
    }
    else
        ca_LogWarn("device driver does not support "
                   "kAudioDevicePropertyPreferredChannelLayout - using stereo");


    bool warn_configuration;
    int ret = au_Initialize(p_aout, p_sys->au_unit, fmt, layout, 0,
                            &warn_configuration);
    if (ret != VLC_SUCCESS)
        goto error;

    err = AudioOutputUnitStart(p_sys->au_unit);
    if (err != noErr)
    {
        ca_LogErr("AudioUnitStart failed");
        au_Uninitialize(p_aout, p_sys->au_unit);
        goto error;
    }


    VolumeSet(p_aout, p_sys->f_volume);
    MuteSet(p_aout, p_sys->b_mute);

    free(layout);

    if (warn_configuration)
        WarnConfiguration(p_aout);

    return VLC_SUCCESS;
error:
    AudioComponentInstanceDispose(p_sys->au_unit);
    free(layout);
    return VLC_EGENERIC;
}
