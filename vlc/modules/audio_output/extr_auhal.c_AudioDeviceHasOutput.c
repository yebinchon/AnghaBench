
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;
typedef int AudioDeviceID ;


 int AO_GETPROP (int ,int ,size_t*,int *,int ,int ) ;
 int AudioStreamID ;
 int FALSE ;
 int TRUE ;
 int VLC_SUCCESS ;
 int kAudioDevicePropertyStreams ;
 int kAudioObjectPropertyScopeOutput ;

__attribute__((used)) static int
AudioDeviceHasOutput(audio_output_t *p_aout, AudioDeviceID i_dev_id)
{
    size_t i_streams;
    int ret = AO_GETPROP(i_dev_id, AudioStreamID, &i_streams, ((void*)0),
                          kAudioDevicePropertyStreams,
                          kAudioObjectPropertyScopeOutput);
    if (ret != VLC_SUCCESS || i_streams == 0)
        return FALSE;

    return TRUE;
}
