
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_7__ {int * client; } ;
typedef TYPE_2__ aout_sys_t ;
typedef int ISimpleAudioVolume ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IAudioClient_GetService (int *,int *,int **) ;
 int IID_ISimpleAudioVolume ;
 int ISimpleAudioVolume_Release (int *) ;
 int ISimpleAudioVolume_SetMasterVolume (int *,float,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int VLC_EGENERIC ;
 int aout_GainRequest (TYPE_1__*,float) ;
 int msg_Err (TYPE_1__*,char*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int VolumeSet(audio_output_t *aout, float vol)
{
    aout_sys_t *sys = aout->sys;
    if( unlikely( sys->client == ((void*)0) ) )
        return VLC_EGENERIC;
    HRESULT hr;
    ISimpleAudioVolume *pc_AudioVolume = ((void*)0);
    float gain = 1.f;

    vol = vol * vol * vol;

    if (vol > 1.f)
    {
        gain = vol;
        vol = 1.f;
    }

    aout_GainRequest(aout, gain);

    hr = IAudioClient_GetService(sys->client, &IID_ISimpleAudioVolume, &pc_AudioVolume);
    if (FAILED(hr))
    {
        msg_Err(aout, "cannot get volume service (error 0x%lX)", hr);
        goto done;
    }

    hr = ISimpleAudioVolume_SetMasterVolume(pc_AudioVolume, vol, ((void*)0));
    if (FAILED(hr))
    {
        msg_Err(aout, "cannot set volume (error 0x%lX)", hr);
        goto done;
    }

done:
    ISimpleAudioVolume_Release(pc_AudioVolume);

    return SUCCEEDED(hr) ? 0 : -1;
}
