
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_manager {int IClientSecurity_iface; int IMarshal_iface; int IMultiQI_iface; } ;
struct ifproxy {void* iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_NOINTERFACE ;
 int IClientSecurity_AddRef (int *) ;
 int IID_IClientSecurity ;
 int IID_IMarshal ;
 int IID_IMultiQI ;
 int IID_IUnknown ;
 int IMarshal_AddRef (int *) ;
 int IMultiQI_AddRef (int *) ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualIID (int ,int *) ;
 scalar_t__ S_OK ;
 int TRACE (char*,int ) ;
 int debugstr_guid (int ) ;
 scalar_t__ proxy_manager_find_ifproxy (struct proxy_manager*,int ,struct ifproxy**) ;

__attribute__((used)) static HRESULT proxy_manager_query_local_interface(struct proxy_manager * This, REFIID riid, void ** ppv)
{
    HRESULT hr;
    struct ifproxy * ifproxy;

    TRACE("%s\n", debugstr_guid(riid));

    if (IsEqualIID(riid, &IID_IUnknown) ||
        IsEqualIID(riid, &IID_IMultiQI))
    {
        *ppv = &This->IMultiQI_iface;
        IMultiQI_AddRef(&This->IMultiQI_iface);
        return S_OK;
    }
    if (IsEqualIID(riid, &IID_IMarshal))
    {
        *ppv = &This->IMarshal_iface;
        IMarshal_AddRef(&This->IMarshal_iface);
        return S_OK;
    }
    if (IsEqualIID(riid, &IID_IClientSecurity))
    {
        *ppv = &This->IClientSecurity_iface;
        IClientSecurity_AddRef(&This->IClientSecurity_iface);
        return S_OK;
    }

    hr = proxy_manager_find_ifproxy(This, riid, &ifproxy);
    if (hr == S_OK)
    {
        *ppv = ifproxy->iface;
        IUnknown_AddRef((IUnknown *)*ppv);
        return S_OK;
    }

    *ppv = ((void*)0);
    return E_NOINTERFACE;
}
