
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;
typedef int const* UInt32 ;
typedef int OSStatus ;
typedef int AudioObjectPropertyAddress ;
typedef int const* AudioObjectID ;


 int AOUT_RESTART_OUTPUT ;
 int VLC_UNUSED (int const*) ;
 int aout_RestartRequest (int *,int ) ;
 int msg_Warn (int *,char*) ;
 int noErr ;

__attribute__((used)) static OSStatus
DeviceAliveListener(AudioObjectID inObjectID, UInt32 inNumberAddresses,
                    const AudioObjectPropertyAddress inAddresses[],
                    void *inClientData)
{
    VLC_UNUSED(inObjectID);
    VLC_UNUSED(inNumberAddresses);
    VLC_UNUSED(inAddresses);

    audio_output_t *p_aout = (audio_output_t *)inClientData;
    if (!p_aout)
        return -1;

    msg_Warn(p_aout, "audio device died, resetting aout");
    aout_RestartRequest(p_aout, AOUT_RESTART_OUTPUT);

    return noErr;
}
