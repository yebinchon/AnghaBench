
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;
typedef scalar_t__ OSStatus ;
typedef int AudioObjectPropertyListenerProc ;
typedef int AudioObjectPropertyAddress ;
typedef int AudioObjectID ;


 scalar_t__ AudioObjectAddPropertyListener (int ,int const*,int ,void*) ;
 scalar_t__ AudioObjectRemovePropertyListener (int ,int const*,int ,void*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*,char*,int ,char const*,int) ;
 scalar_t__ noErr ;

__attribute__((used)) static int
AoUpdateListener(audio_output_t *p_aout, bool add, AudioObjectID id,
                 const AudioObjectPropertyAddress *p_address,
                 AudioObjectPropertyListenerProc listener, void *data)
{
    OSStatus err = add ?
        AudioObjectAddPropertyListener(id, p_address, listener, data) :
        AudioObjectRemovePropertyListener(id, p_address, listener, data);

    if (err != noErr)
    {
        msg_Err(p_aout, "AudioObject%sPropertyListener failed, device id %i, "
                "prop: [%4.4s], OSStatus: %d", add ? "Add" : "Remove", id,
                (const char *)&p_address[0], (int)err);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
