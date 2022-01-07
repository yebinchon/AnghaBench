
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;
typedef int IMMDeviceEnumerator ;
typedef int IMMDevice ;
typedef void IAudioClient ;
typedef int HRESULT ;
typedef int ERole ;
typedef scalar_t__ EDataFlow ;


 int CLSCTX_ALL ;
 int CLSID_MMDeviceEnumerator ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ GetDeviceFlow (int *) ;
 int IID_IAudioClient ;
 int IID_IMMDeviceEnumerator ;
 int IMMDeviceEnumerator_GetDefaultAudioEndpoint (int *,scalar_t__,int ,int **) ;
 int IMMDeviceEnumerator_Release (int *) ;
 int IMMDevice_Activate (int *,int *,int ,int *,void**) ;
 int IMMDevice_Release (int *) ;
 scalar_t__ eCapture ;
 int eCommunications ;
 int eConsole ;
 scalar_t__ eRender ;
 int msg_Err (int *,char*,int ) ;
 int var_InheritBool (int *,char*) ;

__attribute__((used)) static IAudioClient *GetClient(demux_t *demux, bool *restrict loopbackp)
{
    IMMDeviceEnumerator *e;
    IMMDevice *dev;
    void *pv;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_MMDeviceEnumerator, ((void*)0), CLSCTX_ALL,
                          &IID_IMMDeviceEnumerator, &pv);
    if (FAILED(hr))
    {
        msg_Err(demux, "cannot create device enumerator (error 0x%lX)", hr);
        return ((void*)0);
    }
    e = pv;

    bool loopback = var_InheritBool(demux, "wasapi-loopback");
    EDataFlow flow = loopback ? eRender : eCapture;
    ERole role = loopback ? eConsole : eCommunications;

    hr = IMMDeviceEnumerator_GetDefaultAudioEndpoint(e, flow, role, &dev);
    IMMDeviceEnumerator_Release(e);
    if (FAILED(hr))
    {
        msg_Err(demux, "cannot get default device (error 0x%lX)", hr);
        return ((void*)0);
    }

    hr = IMMDevice_Activate(dev, &IID_IAudioClient, CLSCTX_ALL, ((void*)0), &pv);
    *loopbackp = GetDeviceFlow(dev) == eRender;
    IMMDevice_Release(dev);
    if (FAILED(hr))
        msg_Err(demux, "cannot activate device (error 0x%lX)", hr);
    return pv;
}
