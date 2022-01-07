
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ MMRESULT ;
typedef scalar_t__ MMDEVICE_TYPE ;


 scalar_t__ MAX_SOUND_DEVICE_TYPE ;
 scalar_t__ MIN_SOUND_DEVICE_TYPE ;
 scalar_t__ MMSYSERR_NOERROR ;
 int SND_ASSERT (int) ;
 int SND_TRACE (char*) ;
 scalar_t__ UnlistSoundDevices (scalar_t__) ;

VOID
UnlistAllSoundDevices()
{
    MMDEVICE_TYPE Type;

    SND_TRACE(L"Unlisting all sound devices\n");

    for ( Type = MIN_SOUND_DEVICE_TYPE; Type <= MAX_SOUND_DEVICE_TYPE; ++ Type )
    {
        MMRESULT Result;
        Result = UnlistSoundDevices(Type);
        SND_ASSERT( Result == MMSYSERR_NOERROR );
    }
}
