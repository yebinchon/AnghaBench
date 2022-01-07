
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int audio_output_t ;
typedef scalar_t__ OSStatus ;
typedef int Boolean ;
typedef int AudioObjectPropertyAddress ;
typedef int AudioObjectID ;


 scalar_t__ AudioObjectIsPropertySettable (int ,int const*,int*) ;
 int msg_Warn (int *,char*,int ,char const*,int) ;
 scalar_t__ noErr ;

__attribute__((used)) static bool
AoIsPropertySettable(audio_output_t *p_aout, AudioObjectID id,
                     const AudioObjectPropertyAddress *p_address)
{
    Boolean b_settable;
    OSStatus err = AudioObjectIsPropertySettable(id, p_address, &b_settable);
    if (err != noErr)
    {
        msg_Warn(p_aout, "AudioObjectIsPropertySettable failed, device id: %i, "
                 "prop: [%4.4s], OSStatus: %d", id, (const char *)&p_address[0],
                 (int)err);
        return 0;
    }
    return b_settable;
}
