
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STDMETHODIMP ;
typedef int REFIID ;
typedef int IMMNotificationClient ;


 int E_NOINTERFACE ;
 int IID_IMMNotificationClient ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualIID (int ,int *) ;
 int S_OK ;

__attribute__((used)) static STDMETHODIMP
vlc_MMNotificationClient_QueryInterface(IMMNotificationClient *this,
                                        REFIID riid, void **ppv)
{
    if (IsEqualIID(riid, &IID_IUnknown)
     || IsEqualIID(riid, &IID_IMMNotificationClient))
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
