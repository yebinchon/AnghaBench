
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STDMETHODIMP ;
typedef int REFIID ;
typedef int IAudioVolumeDuckNotification ;


 int E_NOINTERFACE ;
 int IID_IAudioVolumeDuckNotification ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualIID (int ,int *) ;
 int S_OK ;

__attribute__((used)) static STDMETHODIMP
vlc_AudioVolumeDuckNotification_QueryInterface(
    IAudioVolumeDuckNotification *this, REFIID riid, void **ppv)
{
    if (IsEqualIID(riid, &IID_IUnknown)
     || IsEqualIID(riid, &IID_IAudioVolumeDuckNotification))
    {
        *ppv = this;
        IUnknown_AddRef(this);
        return S_OK;
    }
    else
    {
       *ppv = ((void*)0);
        return E_NOINTERFACE;
    }
}
