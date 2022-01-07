
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;
typedef scalar_t__ OSStatus ;
typedef int AudioObjectPropertyAddress ;
typedef int AudioObjectID ;


 scalar_t__ AudioObjectSetPropertyData (int ,int const*,int ,int *,size_t,void const*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*,int ,char const*,int) ;
 scalar_t__ noErr ;

__attribute__((used)) static int
AoSetProperty(audio_output_t *p_aout, AudioObjectID id,
              const AudioObjectPropertyAddress *p_address, size_t i_data,
              const void *p_data)
{
    OSStatus err =
        AudioObjectSetPropertyData(id, p_address, 0, ((void*)0), i_data, p_data);

    if (err != noErr)
    {
        msg_Err(p_aout, "AudioObjectSetPropertyData failed, device id: %i, "
                 "prop: [%4.4s], OSStatus: %d", id, (const char *)&p_address[0],
                 (int)err);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
