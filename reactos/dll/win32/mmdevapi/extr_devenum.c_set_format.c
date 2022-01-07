
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ cbSize; } ;
typedef TYPE_3__ WAVEFORMATEX ;
struct TYPE_16__ {int (* pGetAudioEndpoint ) (int *,int *,int **) ;} ;
struct TYPE_15__ {int flow; int devguid; int IMMDevice_iface; } ;
struct TYPE_11__ {int * pBlobData; scalar_t__ cbSize; } ;
struct TYPE_12__ {TYPE_1__ blob; } ;
struct TYPE_14__ {TYPE_2__ u; int vt; int member_0; } ;
typedef TYPE_4__ PROPVARIANT ;
typedef TYPE_5__ MMDevice ;
typedef int IAudioClient ;
typedef int HRESULT ;
typedef int BYTE ;


 int CoTaskMemFree (TYPE_3__*) ;
 scalar_t__ FAILED (int ) ;
 int IAudioClient_GetMixFormat (int *,TYPE_3__**) ;
 int IAudioClient_Release (int *) ;
 int MMDevice_SetPropValue (int *,int ,int *,TYPE_4__*) ;
 int PKEY_AudioEngine_DeviceFormat ;
 int PKEY_AudioEngine_OEMFormat ;
 int S_OK ;
 int VT_BLOB ;
 int VT_EMPTY ;
 TYPE_7__ drvs ;
 int stub1 (int *,int *,int **) ;

__attribute__((used)) static HRESULT set_format(MMDevice *dev)
{
    HRESULT hr;
    IAudioClient *client;
    WAVEFORMATEX *fmt;
    PROPVARIANT pv = { VT_EMPTY };

    hr = drvs.pGetAudioEndpoint(&dev->devguid, &dev->IMMDevice_iface, &client);
    if(FAILED(hr))
        return hr;

    hr = IAudioClient_GetMixFormat(client, &fmt);
    if(FAILED(hr)){
        IAudioClient_Release(client);
        return hr;
    }

    IAudioClient_Release(client);

    pv.vt = VT_BLOB;
    pv.u.blob.cbSize = sizeof(WAVEFORMATEX) + fmt->cbSize;
    pv.u.blob.pBlobData = (BYTE*)fmt;
    MMDevice_SetPropValue(&dev->devguid, dev->flow,
            &PKEY_AudioEngine_DeviceFormat, &pv);
    MMDevice_SetPropValue(&dev->devguid, dev->flow,
            &PKEY_AudioEngine_OEMFormat, &pv);
    CoTaskMemFree(fmt);

    return S_OK;
}
