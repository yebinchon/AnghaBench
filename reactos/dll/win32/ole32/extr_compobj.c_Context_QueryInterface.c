
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IObjContext_iface; int IContextCallback_iface; int IComThreadingInfo_iface; } ;
typedef int REFIID ;
typedef int * LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_1__ Context ;


 int E_NOINTERFACE ;
 int FIXME (char*,int ) ;
 int IID_IComThreadingInfo ;
 int IID_IContextCallback ;
 int IID_IObjContext ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualIID (int ,int *) ;
 int S_OK ;
 int debugstr_guid (int ) ;

__attribute__((used)) static HRESULT Context_QueryInterface(Context *iface, REFIID riid, LPVOID *ppv)
{
    *ppv = ((void*)0);

    if (IsEqualIID(riid, &IID_IComThreadingInfo) ||
        IsEqualIID(riid, &IID_IUnknown))
    {
        *ppv = &iface->IComThreadingInfo_iface;
    }
    else if (IsEqualIID(riid, &IID_IContextCallback))
    {
        *ppv = &iface->IContextCallback_iface;
    }
    else if (IsEqualIID(riid, &IID_IObjContext))
    {
        *ppv = &iface->IObjContext_iface;
    }

    if (*ppv)
    {
        IUnknown_AddRef((IUnknown*)*ppv);
        return S_OK;
    }

    FIXME("interface not implemented %s\n", debugstr_guid(riid));
    return E_NOINTERFACE;
}
