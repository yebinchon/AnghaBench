
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pNext; int szId; } ;
typedef TYPE_1__ NetCfgComponentItem ;
typedef int LPVOID ;
typedef int LPCWSTR ;
typedef int INetCfgComponent ;
typedef int INetCfg ;
typedef int HRESULT ;


 int IID_INetCfgComponent ;
 int INetCfgComponent_Constructor (int *,int *,int *,TYPE_1__*,int *) ;
 int S_FALSE ;
 int _wcsicmp (int ,int ) ;

HRESULT
FindNetworkComponent(
    NetCfgComponentItem * pHead,
    LPCWSTR pszwComponentId,
    INetCfgComponent **pComponent,
    INetCfg * iface)
{
    while(pHead)
    {
        if (!_wcsicmp(pHead->szId, pszwComponentId))
        {
            return INetCfgComponent_Constructor(((void*)0), &IID_INetCfgComponent, (LPVOID*)pComponent, pHead, iface);
        }
        pHead = pHead->pNext;
    }
    return S_FALSE;
}
