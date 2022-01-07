
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clsid; int * cf; } ;
typedef TYPE_1__ name_space ;
typedef int IUri ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef int CLSID ;
typedef int BSTR ;


 int EnterCriticalSection (int *) ;
 scalar_t__ FAILED (int ) ;
 int IClassFactory_AddRef (int *) ;
 int IUri_GetSchemeName (int *,int *) ;
 int LeaveCriticalSection (int *) ;
 int S_OK ;
 int SysFreeString (int ) ;
 int SysStringLen (int ) ;
 TYPE_1__* find_name_space (int ) ;
 int get_protocol_cf (int ,int ,int *,int **) ;
 int session_cs ;

HRESULT get_protocol_handler(IUri *uri, CLSID *clsid, IClassFactory **ret)
{
    name_space *ns;
    BSTR scheme;
    HRESULT hres;

    *ret = ((void*)0);


    hres = IUri_GetSchemeName(uri, &scheme);
    if(FAILED(hres))
        return hres;

    EnterCriticalSection(&session_cs);

    ns = find_name_space(scheme);
    if(ns) {
        *ret = ns->cf;
        IClassFactory_AddRef(*ret);
        if(clsid)
            *clsid = ns->clsid;
    }

    LeaveCriticalSection(&session_cs);

    hres = *ret ? S_OK : get_protocol_cf(scheme, SysStringLen(scheme), clsid, ret);
    SysFreeString(scheme);
    return hres;
}
