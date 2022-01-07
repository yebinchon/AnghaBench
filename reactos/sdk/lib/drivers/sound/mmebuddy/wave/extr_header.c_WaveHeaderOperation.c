
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Header; int Function; } ;
typedef TYPE_1__ THREADED_WAVEHEADER_PARAMETERS ;
typedef int PWAVEHDR ;
typedef int PSOUND_DEVICE_INSTANCE ;
typedef int MMWAVEHEADER_FUNC ;
typedef int MMRESULT ;


 int CallSoundThread (int ,int ,TYPE_1__*) ;
 int WaveHeaderOperationInSoundThread ;

MMRESULT
WaveHeaderOperation(
    MMWAVEHEADER_FUNC Function,
    PSOUND_DEVICE_INSTANCE SoundDeviceInstance,
    PWAVEHDR Header)
{
    THREADED_WAVEHEADER_PARAMETERS Parameters;

    Parameters.Function = Function;
    Parameters.Header = Header;

    return CallSoundThread(SoundDeviceInstance,
                           WaveHeaderOperationInSoundThread,
                           &Parameters);
}
