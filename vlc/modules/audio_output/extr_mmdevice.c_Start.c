
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int module_t ;
typedef int audio_sample_format_t ;
struct TYPE_22__ {int headphones; } ;
struct TYPE_23__ {TYPE_2__ current_sink_info; TYPE_4__* sys; } ;
typedef TYPE_3__ audio_output_t ;
struct TYPE_24__ {int gain; TYPE_5__* stream; int lock; int * dev; scalar_t__ request_device_restart; } ;
typedef TYPE_4__ aout_sys_t ;
struct TYPE_21__ {int * device; int activate; } ;
struct TYPE_25__ {TYPE_1__ owner; } ;
typedef TYPE_5__ aout_stream_t ;
struct TYPE_26__ {int uintVal; } ;
typedef TYPE_6__ PROPVARIANT ;
typedef int IPropertyStore ;
typedef scalar_t__ HRESULT ;


 int AOUT_FMT_HDMI (int *) ;
 int AOUT_FMT_SPDIF (int *) ;
 scalar_t__ AUDCLNT_E_ALREADY_INITIALIZED ;
 scalar_t__ AUDCLNT_E_DEVICE_INVALIDATED ;
 int ActivateDevice ;
 int DeviceRestartLocked (TYPE_3__*) ;
 int DeviceSelectLocked (TYPE_3__*,int *) ;
 int EnterCriticalSection (int *) ;
 int EnterMTA () ;


 scalar_t__ IMMDevice_OpenPropertyStore (int *,int ,int **) ;
 scalar_t__ IPropertyStore_GetValue (int *,int *,TYPE_6__*) ;
 int IPropertyStore_Release (int *) ;
 int LeaveCriticalSection (int *) ;
 int LeaveMTA () ;



 int PKEY_AudioEndpoint_FormFactor ;
 int PropVariantClear (TYPE_6__*) ;
 int PropVariantInit (TYPE_6__*) ;
 int STGM_READ ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int aout_GainRequest (TYPE_3__*,int ) ;
 int aout_stream_Start ;
 int assert (int ) ;
 int free (char*) ;
 scalar_t__ unlikely (int ) ;
 int var_InheritInteger (TYPE_3__*,char*) ;
 char* var_InheritString (TYPE_3__*,char*) ;
 int * vlc_module_load (TYPE_5__*,char*,char*,int,int ,TYPE_5__*,int *,scalar_t__*) ;
 TYPE_5__* vlc_object_create (TYPE_3__*,int) ;
 int vlc_object_delete (TYPE_5__*) ;

__attribute__((used)) static int Start(audio_output_t *aout, audio_sample_format_t *restrict fmt)
{
    aout_sys_t *sys = aout->sys;

    const bool b_spdif = AOUT_FMT_SPDIF(fmt);
    const bool b_hdmi = AOUT_FMT_HDMI(fmt);
    if (b_spdif || b_hdmi)
    {
        switch (var_InheritInteger(aout, "mmdevice-passthrough"))
        {
            case 130:
                return -1;
            case 129:
                if (b_hdmi)
                    return -1;

            case 128:
                break;
        }
    }

    aout_stream_t *s = vlc_object_create(aout, sizeof (*s));
    if (unlikely(s == ((void*)0)))
        return -1;

    s->owner.activate = ActivateDevice;

    EnterMTA();
    EnterCriticalSection(&sys->lock);

    if ((sys->request_device_restart && DeviceRestartLocked(aout) != 0)
      || sys->dev == ((void*)0))
    {


        LeaveCriticalSection(&sys->lock);
        LeaveMTA();
        vlc_object_delete(s);
        return -1;
    }

    module_t *module;

    for (;;)
    {
        char *modlist = var_InheritString(aout, "mmdevice-backend");
        HRESULT hr;
        s->owner.device = sys->dev;

        module = vlc_module_load(s, "aout stream", modlist,
                                 0, aout_stream_Start, s, fmt, &hr);
        free(modlist);

        int ret = -1;
        if (hr == AUDCLNT_E_ALREADY_INITIALIZED)
        {
            ret = DeviceRestartLocked(aout);
        }
        else if (hr == AUDCLNT_E_DEVICE_INVALIDATED)
        {



            ret = DeviceSelectLocked(aout, ((void*)0));
        }
        if (ret != 0)
            break;
    }

    if (module != ((void*)0))
    {
        IPropertyStore *props;
        HRESULT hr = IMMDevice_OpenPropertyStore(sys->dev, STGM_READ, &props);
        if (SUCCEEDED(hr))
        {
            PROPVARIANT v;
            PropVariantInit(&v);
            hr = IPropertyStore_GetValue(props, &PKEY_AudioEndpoint_FormFactor, &v);
            if (SUCCEEDED(hr))
            {
                switch (v.uintVal)
                {
                    case 132:
                    case 131:
                        aout->current_sink_info.headphones = 1;
                        break;
                }
                PropVariantClear(&v);
            }
            IPropertyStore_Release(props);
        }
    }

    LeaveCriticalSection(&sys->lock);
    LeaveMTA();

    if (module == ((void*)0))
    {
        vlc_object_delete(s);
        return -1;
    }

    assert (sys->stream == ((void*)0));
    sys->stream = s;
    aout_GainRequest(aout, sys->gain);
    return 0;
}
