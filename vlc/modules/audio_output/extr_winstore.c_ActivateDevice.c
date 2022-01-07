
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int PROPVARIANT ;
typedef int IAudioClient ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 int E_NOINTERFACE ;
 int IAudioClient_AddRef (int *) ;
 int IID_IAudioClient ;
 int IsEqualIID (int ,int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT ActivateDevice(void *opaque, REFIID iid, PROPVARIANT *actparms,
                              void **restrict pv)
{
    IAudioClient *client = opaque;

    if (!IsEqualIID(iid, &IID_IAudioClient))
        return E_NOINTERFACE;
    if (actparms != ((void*)0) || client == ((void*)0) )
        return E_INVALIDARG;

    IAudioClient_AddRef(client);
    *pv = opaque;

    return S_OK;
}
