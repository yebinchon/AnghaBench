
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct CONFIRMSAFETY {int dwFlags; int pUnk; int clsid; } ;
typedef int cs ;
struct TYPE_5__ {TYPE_1__* doc; int plugin_unk; int clsid; } ;
struct TYPE_4__ {int IInternetHostSecurityManager_iface; } ;
typedef TYPE_2__ PluginHost ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CONFIRMSAFETYACTION_LOADOBJECT ;
 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GUID_CUSTOM_CONFIRMOBJECTSAFETY ;
 int IInternetHostSecurityManager_QueryCustomPolicy (int *,int *,int **,scalar_t__*,int *,int,int ) ;
 scalar_t__ URLPOLICY_ALLOW ;

__attribute__((used)) static BOOL check_load_safety(PluginHost *host)
{
    DWORD policy_size, policy;
    struct CONFIRMSAFETY cs;
    BYTE *ppolicy;
    HRESULT hres;

    cs.clsid = host->clsid;
    cs.pUnk = host->plugin_unk;
    cs.dwFlags = CONFIRMSAFETYACTION_LOADOBJECT;

    hres = IInternetHostSecurityManager_QueryCustomPolicy(&host->doc->IInternetHostSecurityManager_iface,
            &GUID_CUSTOM_CONFIRMOBJECTSAFETY, &ppolicy, &policy_size, (BYTE*)&cs, sizeof(cs), 0);
    if(FAILED(hres))
        return FALSE;

    policy = *(DWORD*)ppolicy;
    CoTaskMemFree(ppolicy);
    return policy == URLPOLICY_ALLOW;
}
